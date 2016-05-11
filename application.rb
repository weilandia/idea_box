require './config/environment'

class App < Sinatra::Application
  use IdeasController
  use Api::IdeasController
end
