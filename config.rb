###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload, :host => "33.33.33.60"
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Asset locations
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'
set :partials_dir, 'shared'

# Vendor (bower components)
sprockets.append_path '../vendor/'

# Compass config
compass_config do |config|
  config.add_import_path "../vendor/foundation/scss"
  config.http_path = "/"
  config.css_dir = "assets/stylesheets"
  config.sass_dir = "assets/stylesheets"
  config.images_dir = "assets/images"
  config.javascripts_dir = "assets/javascripts"
end

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  set :relative_links, true
end

# Template
set :haml, { :ugly => false, :format => :html5 }
