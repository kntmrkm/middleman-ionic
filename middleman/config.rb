require 'cordova'

after_configuration do
  sprockets.append_path "#{root}/components/"
end

activate :cordova
activate :automatic_image_sizes
activate :livereload

with_layout :plain do
  page '/views'
end

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'
set :fonts_dir, 'font'
set :relative_links, true

configure :build do
  ignore 'js/lib/*'
  ignore 'css/lib/*'

  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end
