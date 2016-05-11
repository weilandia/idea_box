class IdeasController < ApplicationController
  get "/" do
    @ideas = Idea.order_by(:created_at => 'desc')
    erb :home
  end
end
