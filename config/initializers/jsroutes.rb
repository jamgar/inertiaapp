JsRoutes.setup do |config|
  config.exclude = [/rails_/] # excludes rails generated routes
  config.compact = true       # removes the _path from the route name
  path = "app/javascript/packs"
  JsRoutes.generate!("#{path}/routes.js")
end