module RSpecMixin
  include Rack::Test::Methods
  def app() App end
end

RSpec.configure { |c|
  c.include RSpecMixin
  c.include Capybara::DSL
}

Capybara.app = App
Capybara.default_driver = :selenium
