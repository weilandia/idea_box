require './config/environment'
require 'rack/lobster'

module Mongoid
  module Document
    def as_json(options={})
      attrs = super(options)
      attrs["id"] = attrs["_id"].to_s
      attrs
    end
  end
end

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
