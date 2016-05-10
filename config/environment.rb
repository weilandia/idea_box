ENV['RACK_ENV'] ||= 'development'
require './config/assets'
require 'rubygems'
require 'bundler'
Bundler.require(:default)
Bundler.require(Sinatra::Base.environment)

configure do
  Mongoid.load!("./config/mongoid.yml", :development)
end

Dir.glob('./**/*.rb').each { |file| require file }
