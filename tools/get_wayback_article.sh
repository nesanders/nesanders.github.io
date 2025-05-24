#!/bin/bash

# Script to retrieve an article from the Wayback Machine and convert to Markdown.

# --- Configuration ---
TARGET_URL="$1"
OUTPUT_DIR="." # Current directory
USER_AGENT="WaybackMarkdownFetcher/1.0"

# --- Helper Functions ---
log_error() {
    echo "ERROR: $1" >&2
}

log_info() {
    echo "INFO: $1"
}

check_dependencies() {
    local missing_deps=0
    for cmd in curl jq pandoc; do
        if ! command -v "$cmd" &> /dev/null; then
            log_error "$cmd is not installed. Please install it to use this script."
            missing_deps=1
        fi
    done
    if [ "$missing_deps" -eq 1 ]; then
        exit 1
    fi
}

# --- Main Script ---

# Validate input
if [ -z "$TARGET_URL" ]; then
    log_error "No target URL provided."
    echo "Usage: $0 <URL>"
    exit 1
fi

check_dependencies

log_info "Target URL: $TARGET_URL"

# 1. Find the earliest snapshot using Wayback Machine CDX API
# We request JSON output, sort by timestamp ascending, and limit to 1 result.
# We ask for the timestamp (field 2) and original URL (field 3).
cdx_api_url="http://web.archive.org/cdx/search/cdx?url=${TARGET_URL}&output=json&fl=timestamp,original&sort=timestamp:asc&limit=1"

log_info "Querying Wayback Machine CDX API: $cdx_api_url"
api_response=$(curl -s -A "$USER_AGENT" "$cdx_api_url")

if [ -z "$api_response" ] || [ "$(echo "$api_response" | jq 'length')" -eq 0 ]; then
    log_error "No snapshots found for $TARGET_URL in the Wayback Machine, or API error."
    # Check if it's an empty JSON array `[]` which means no results
    if [[ "$api_response" == "[]" ]]; then
      log_error "The API returned an empty array, meaning no captures were found."
    else
      log_error "API Response: $api_response"
    fi
    exit 1
fi

# The response is a JSON array of arrays, e.g., [["timestamp","original"],["20050405201633","http://software.newsforge.com:80/software/05/04/05/186210"]]
# We skip the header row if present, or directly access if it's just the data row.
# Robustly get the first data item (index 0 if no header, index 1 if header)
# Assuming the API with limit=1 might return: [["20050405201633","http://software.newsforge.com:80/software/05/04/05/186210"]]
# or [["timestamp","original"],["20050405201633","http://software.newsforge.com:80/software/05/04/05/186210"]]

# Let's try to get the first element of the main array, then its elements.
first_result=$(echo "$api_response" | jq -r '.[0]')

if [ "$first_result" == "null" ] || [ "$(echo "$first_result" | jq 'length')" -ne 2 ]; then
    # This handles cases like `[]` or `[["timestamp", "original"]]` if no actual data snapshots.
    # If limit=1, it should ideally just return the data or empty array.
    # If the first element's first item is "timestamp", it means headers are included, take the next one.
    if [ "$(echo "$api_response" | jq -r '.[0][0]')" == "timestamp" ]; then
        snapshot_data=$(echo "$api_response" | jq -r '.[1]')
        if [ "$snapshot_data" == "null" ]; then
             log_error "No valid snapshot data found after header for $TARGET_URL."
             exit 1
        fi
    else # It's already the data or an issue
        snapshot_data=$first_result
    fi
else
    snapshot_data=$first_result # This means the first element was already the data array
fi


timestamp=$(echo "$snapshot_data" | jq -r '.[0]')
original_url=$(echo "$snapshot_data" | jq -r '.[1]')

if [ "$timestamp" == "null" ] || [ "$original_url" == "null" ]; then
    log_error "Could not parse timestamp or original URL from API response."
    log_error "Raw Response: $api_response"
    log_error "Parsed Snapshot Data: $snapshot_data"
    exit 1
fi

log_info "Found earliest snapshot:"
log_info "  Timestamp: $timestamp"
log_info "  Original URL: $original_url"

# 2. Construct the URL for the raw version of the archived page
# The "id_" flag is for "identity" crawl - raw content without Wayback UI.
raw_content_url="https://web.archive.org/web/${timestamp}id_/${original_url}"
log_info "Fetching raw HTML content from: $raw_content_url"

# 3. Download the HTML content
html_content=$(curl -s -L -A "$USER_AGENT" "$raw_content_url")

if [ -z "$html_content" ]; then
    log_error "Failed to download HTML content from $raw_content_url."
    exit 1
fi

# 4. Determine output filename
# Try to get a slug from the URL path or query
slug=$(echo "$TARGET_URL" | grep -oP 'sid=\K[^&]+' | tr '/' '-')
if [ -z "$slug" ]; then
    slug=$(basename "$TARGET_URL")
fi
if [ -z "$slug" ]; then
    slug="article"
fi
output_filename="${OUTPUT_DIR}/${slug}_${timestamp}.md"

log_info "Converting HTML to Markdown..."

# 5. Convert HTML to Markdown using pandoc
# -f html: input format is HTML
# -t gfm: output format is GitHub Flavored Markdown (good balance of features and simplicity)
# --strip-comments: remove HTML comments
# pandoc will try to convert the main content. Stripping sidebars/ads perfectly
# is hard without more specific rules or tools like readability.js.
# Basic tags are generally preserved by gfm.
markdown_content=$(echo "$html_content" | pandoc -f html -t gfm --strip-comments)

if [ $? -ne 0 ]; then
    log_error "Pandoc failed to convert HTML to Markdown."
    # Optionally save the HTML for debugging
    # echo "$html_content" > "${slug}_${timestamp}_error.html"
    # log_info "Problematic HTML saved to ${slug}_${timestamp}_error.html"
    exit 1
fi

if [ -z "$markdown_content" ]; then
    log_error "Pandoc conversion resulted in empty_content content. The HTML might be empty or not convertible."
    exit 1
fi

# 6. Save the markdown to a file
echo "$markdown_content" > "$output_filename"

if [ $? -eq 0 ]; then
    log_info "Successfully converted article to Markdown: $output_filename"
else
    log_error "Failed to write Markdown to file: $output_filename"
    exit 1
fi

exit 0
