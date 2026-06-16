# Generates a browseable archive page per `venue:` front-matter value,
# at /venues/<slug>/ , mirroring how jekyll-archives builds tag pages.
module Venues
  class VenuePage < Jekyll::Page
    def initialize(site, base, venue, posts)
      @site = site
      @base = base
      @dir  = File.join("venues", Jekyll::Utils.slugify(venue))
      @name = "index.html"
      process(@name)
      self.data = {
        "layout" => "venue",
        "title"  => venue,
        "posts"  => posts.sort_by { |p| p.date }.reverse
      }
    end
  end

  class VenueGenerator < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      venues = Hash.new { |h, k| h[k] = [] }
      site.posts.docs.each do |post|
        v = post.data["venue"]
        venues[v] << post if v && !v.to_s.strip.empty?
      end
      venues.each do |venue, posts|
        site.pages << VenuePage.new(site, site.source, venue, posts)
      end
    end
  end
end
