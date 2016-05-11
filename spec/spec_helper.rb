ENV['RACK_ENV'] = 'test'
require 'rack/test'
require 'rspec'
require 'sinatra'
require 'sinatra/advanced_routes'
require 'mongoid'
require './application'

Dir[('./models/**/*.rb')].each { |f| require f }
Dir[('./spec/support/**/*.rb')].each { |f| require f }
