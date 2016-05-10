require 'bundler'
Bundler.require :default

set :root, File.realpath(File.dirname(__FILE__))
register Sinatra::AdvancedRoutes

get '/' do
  @ideas = Idea.all
  erb :home
end
