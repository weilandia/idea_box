module Api
  class IdeasController < ::ApplicationController
    post "/api/ideas" do
      @idea = Idea.create(idea_params)
      @idea.to_json
    end

    delete "/api/ideas" do
      Idea.find(params[:id]).delete
    end

    put "/api/ideas" do
      Idea.find(params[:id]).update(quality: params[:quality])
    end

    private
    def idea_params
      {title: params[:title].strip, body: params[:body].strip}
    end
  end
end
