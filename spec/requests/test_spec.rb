require_relative '../spec_helper.rb'


10.times { puts "SPEC"}
describe "GET /" do
  it "response is a success" do
    get '/'
    expect(last_response).to be_ok
  end
end
