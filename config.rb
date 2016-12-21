require 'slim'

###
# Page options, layouts, aliases and proxies
###
set :site_url, ''
#set :relative_links, true


set :source, 'src'
set :build_dir, 'docs'

#set :layout, 'layout'
#set :images_dir, 'images'
#set :fonts_dir, 'fonts'
#set :layouts_dir, 'layouts'
#set :partials_dir, 'partials'
#set :css_dir, 'stylesheets'
#set :js_dir, 'javascripts'
#set :data_dir, 'data'
#set :helpers_dir, 'helpers'

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy '/this-page-has-no-template.html', '/template-file.html', locals: {
#  which_fake_page: 'Rendering a fake page with a local variable' }

###
# Helpers
###

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
  # set :host, ''
  # set :site_url, '/repo-name'
  activate :relative_assets
end
