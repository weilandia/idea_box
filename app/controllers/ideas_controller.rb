class IdeasController < ApplicationController
  get "/" do
    erb :home
  end

  get "/jquery" do
    @ideas = Idea.order_by(:created_at => 'desc')
    erb :home_sinatra
  end

  get "/react" do
    erb :react
  end

  get "/angular" do
    erb :angular
  end
end
