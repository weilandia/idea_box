require './config/environment'

class App < Sinatra::Application
  use IdeasController
  use SampleController
  use Api::IdeasController
end
