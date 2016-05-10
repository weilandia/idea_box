class SampleController < ApplicationController
  get '/test' do
    "une test"
    @ideas = []
    erb :home
  end
end
