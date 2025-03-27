module Jekyll
  class RedirectGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.posts.docs.each do |post|
        # Get the URL path components
        date = post.date
        year = date.strftime('%Y')
        month = date.strftime('%m')
        day = date.strftime('%d')
        
        # Try to get the slug from multiple sources
        # First check if slug is explicitly set
        slug = if post.data['slug']
                post.data['slug']
              else
                # Extract from the basename of the file (removing date prefix if present)
                post.basename_without_ext.gsub(/^\d{4}-\d{2}-\d{2}-/, '')
              end
        
        # Get the destination URL (with the day component)
        destination_url = "/#{year}/#{month}/#{day}/#{slug}.html"
        
        # Create a new page for the shortened URL (without day)
        redirect = PageWithoutAFile.new(site, site.source, '', "#{year}/#{month}/#{slug}.html")
        redirect.content = <<-HTML
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Redirecting...</title>
  <link rel="canonical" href="#{destination_url}">
  <meta http-equiv="refresh" content="0; url=#{destination_url}">
  <script>window.location.href = "#{destination_url}";</script>
</head>
<body>
  <h1>Redirecting...</h1>
  <p>This page has moved. If you are not redirected automatically, <a href="#{destination_url}">click here</a>.</p>
</body>
</html>
        HTML
        
        redirect.data['layout'] = nil
        redirect.data['sitemap'] = false
        
        site.pages << redirect
      end
    end
  end
end