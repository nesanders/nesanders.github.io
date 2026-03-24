import os
import xml.etree.ElementTree as ET
import re
import json
import html as html_lib
import argparse
from datetime import datetime

def clean_html(html_text):
    # Very basic HTML to Markdown conversion
    if not html_text:
        return ""
    
    # Unescape HTML entities
    html_text = html_lib.unescape(html_text)
    
    # Replace [caption] shortcodes
    def replace_caption(match):
        caption_attr = re.search(r'caption="(.*?)"', match.group(0))
        img_content = match.group(1)
        caption_text = caption_attr.group(1) if caption_attr else ""
        return f"{img_content}\n\n*{caption_text}*"
    
    html_text = re.sub(r'\[caption.*?\](.*?)\[/caption\]', replace_caption, html_text, flags=re.DOTALL)
    
    # Replace <a> tags with Markdown links
    html_text = re.sub(r'<a href="(.*?)".*?>(.*?)</a>', r'[\2](\1)', html_text)
    
    # Replace <img> tags (keep absolute WordPress URLs)
    html_text = re.sub(r'<img.*?src="(.*?)".*?>', r'![](\1)', html_text)
    
    # Replace <ul> and <li>
    html_text = html_text.replace('<ul>', '').replace('</ul>', '')
    html_text = html_text.replace('<li>', '- ').replace('</li>', '\n')
    
    # Replace <strong> and <b>
    html_text = re.sub(r'<(strong|b)>(.*?)</\1>', r'**\2**', html_text)
    
    # Remove other tags
    html_text = re.sub(r'<.*?>', '', html_text)
    
    return html_text.strip()

def migrate(xml_file, output_root, dry_run=False):
    tree = ET.parse(xml_file)
    root = tree.getroot()
    channel = root.find('channel')
    
    ns = {
        'wp': 'http://wordpress.org/export/1.2/',
        'content': 'http://purl.org/rss/1.0/modules/content/',
        'dc': 'http://purl.org/dc/elements/1.1/',
        'excerpt': 'http://wordpress.org/export/1.2/excerpt/'
    }
    
    # Target subdirectory
    output_dir = os.path.join(output_root, 'astrobites')
    
    if not dry_run and not os.path.exists(output_dir):
        os.makedirs(output_dir)
        
    count = 0
    skipped = 0
    
    print(f"{'DRY RUN: ' if dry_run else ''}Processing {xml_file}...")
    
    for item in channel.findall('item'):
        title_elem = item.find('title')
        title = title_elem.text if title_elem is not None else "Untitled"
        post_type = item.find('wp:post_type', ns).text
        status = item.find('wp:status', ns).text
        
        if post_type != 'post' or status != 'publish':
            continue
            
        categories = [cat.text.lower() for cat in item.findall('category') if cat.get('domain') == 'category']
        tags = [cat.text for cat in item.findall('category') if cat.get('domain') == 'post_tag']
        
        content_elem = item.find('content:encoded', ns)
        content = content_elem.text if content_elem is not None else ""
        word_count = len(content.split())
        
        # Announcement filtering logic
        is_announcement = False
        skip_keywords = [
            'apply now', 'announcing', 'call for', 'opportunity', 'newsletter', 
            'reader survey', 'visit astrobites', 'welcome to'
        ]
        
        if any(kw in title.lower() for kw in skip_keywords):
            is_announcement = True
        
        if 'survey' in title.lower() and 'reader' in title.lower():
            is_announcement = True

        # Check for substantive content unless it's a paper summary
        is_paper_summary = 'daily paper summaries' in categories
        
        if not is_paper_summary and not is_announcement:
            threshold = 500
            if 'career navigation' in categories:
                threshold = 450
            if word_count < threshold:
                is_announcement = True

        if is_announcement:
            skipped += 1
            if dry_run:
                print(f"Skipping announcement: {title} ({word_count} words)")
            continue
            
        # Migration logic
        post_date = item.find('wp:post_date', ns).text
        # WordPress date usually: 2010-11-30 14:13:42
        dt = datetime.strptime(post_date, '%Y-%m-%d %H:%M:%S')
        date_str = dt.strftime('%Y-%m-%d')
        readable_date = dt.strftime('%B %d, %Y')
        slug = item.find('wp:post_name', ns).text
        
        if not slug:
            slug = re.sub(r'[^a-zA-Z0-9]+', '-', title.lower()).strip('-')
            
        filename = f"{date_str}-{slug}.md"
        filepath = os.path.join(output_dir, filename)
        
        if dry_run:
            print(f"Would migrate: {filename} ({word_count} words)")
            count += 1
            continue

        orig_link = item.find('link').text
        markdown_body = clean_html(content)
        
        # New: Add original post notice at the TOP
        notice = f"*This post originally appeared on Astrobites.org on {readable_date} at [{orig_link}]({orig_link}).*"
        markdown_body = f"{notice}\n\n{markdown_body}"
        
        excerpt_elem = item.find('excerpt:encoded', ns)
        excerpt = excerpt_elem.text if excerpt_elem is not None else ""
        description = clean_html(excerpt).split('\n')[0] if excerpt else markdown_body[len(notice)+2:len(notice)+152].split('\n')[0]
        
        front_matter = {
            "title": title,
            "date": date_str,
            "pin": False,
            "categories": ["astrobites"],
            "tags": tags,
            "description": description,
            "authors": ["nes"]  # Changed from nsanders
        }
        
        with open(filepath, 'w') as f:
            f.write('---\n')
            for k, v in front_matter.items():
                f.write(f'{k}: {json.dumps(v)}\n')
            f.write('---\n\n')
            f.write(markdown_body)
            
        count += 1
        print(f"Migrated: {filename}")
        
    print(f"\nDone! {'Would have migrated' if dry_run else 'Migrated'} {count} posts to {output_dir}, skipped {skipped} announcements.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Migrate WordPress XML export to Jekyll posts.')
    parser.add_argument('--dry-run', action='store_true', help='Dry run: print what would be done without making changes.')
    args = parser.parse_args()
    
    xml_path = "/home/nes/Documents/nes_github_io/astrobites.WordPress.2026-03-24_nsanders.xml"
    output_path = "/home/nes/Documents/nes_github_io/_posts/writing"
    migrate(xml_path, output_path, dry_run=args.dry_run)
