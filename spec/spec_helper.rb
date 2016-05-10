require 'rack/test'
require 'rspec'
require 'sinatra'
require 'sinatra/advanced_routes'
require 'mongoid'
require './application'

ENV['RACK_ENV'] = 'test'

Dir[('./spec/support/**/*.rb')].each { |f| require f }
Dir[('./models/**/*.rb')].each { |f| require f }

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure { |c| c.include RSpecMixin }
