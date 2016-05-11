require './config/environment'
require 'rack/lobster'

class Controllers < Sinatra::Application
  use IdeasController
  use Api::IdeasController
end

App = Rack::Builder.new do
  map '/assets' do
    run Assets.environment ApplicationController.root
  end

  run Controllers
end
