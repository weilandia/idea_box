module RSpecMixin
  include Rack::Test::Methods
  def app() App end
end

Capybara.app = App
Capybara.default_driver = :selenium

RSpec.configure { |c|
  c.include RSpecMixin
  c.include Capybara::DSL
}
