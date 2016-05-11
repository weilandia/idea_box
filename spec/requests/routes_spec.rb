require_relative '../spec_helper.rb'

describe "GET /" do
  it "response is a success" do
    get('/')
    expect(last_response).to be_ok
  end
end

describe "POST /api/ideas" do
  it "response is a success" do
    post('/api/ideas', {title: "test", body: "test"})
    expect(last_response).to be_ok
  end
end

describe "DELETE /api/ideas" do
  it "response is a success" do
    idea = Idea.create()
    delete('/api/ideas', {id: idea.id})
    expect(last_response).to be_ok
  end
end
