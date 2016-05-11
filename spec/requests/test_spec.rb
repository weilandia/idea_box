require_relative '../spec_helper.rb'

describe "GET /" do
  it "response is a success" do
    get '/'
    expect(last_response).to be_ok
  end
end
