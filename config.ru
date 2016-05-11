require "./application"

map '/assets' do
  run Assets.environment ApplicationController.root
end

run App
