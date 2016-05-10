require './config/environment'

unless ENV['RACK_ENV'] == 'production'
  map '/assets' do
    run Assets.environment Sinatra::Application.settings.root
  end
end

run Sinatra::Application
