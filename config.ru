require "./application"

unless ENV['RACK_ENV'] == 'production'
  map '/assets' do
    run Assets.environment ApplicationController.root
  end
end

run App
