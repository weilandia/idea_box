ENV['RACK_ENV'] = 'test'
require 'capybara/dsl'
require 'tilt/erb'
require 'faker'
require './application'

Dir[('./models/**/*.rb')].each { |f| require f }
Dir[('./spec/support/**/*.rb')].each { |f| require f }
