ENV['RACK_ENV'] ||= 'development'
require './config/assets'
require 'rubygems'
require 'bundler'
Bundler.require(:default)
Bundler.require(Sinatra::Base.environment)

configure do
  Mongoid.load!("./config/mongoid.yml")
end

require './app/controllers/application_controller'
Dir.glob('./app/**/*.rb').each { |file| require file }
require "./application"
