require './config/environment'

desc 'Show routes'
task :routes do
  Sinatra::Application.each_route { |route|
    unless route.verb == "HEAD"
      puts "#{route.verb} #{route.path}"
    end
  }
end
