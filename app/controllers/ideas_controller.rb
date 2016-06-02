class IdeasController < ApplicationController
  get "/" do
    @ideas = Idea.order_by(:created_at => 'desc')
    erb :home_sinatra
  end

  get "/react" do
    @ideas = Idea.order_by(:created_at => 'desc')
    erb :react
  end
end
