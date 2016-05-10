class IdeasController < ApplicationController
  get "/" do
    @ideas = Idea.all
    erb :home
  end
end
