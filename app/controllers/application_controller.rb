class ApplicationController < Sinatra::Base
  set :root, File.realpath(File.join(File.dirname(__FILE__), ".."))
  register Sinatra::AdvancedRoutes
end
