require './application'

desc 'Show routes'
task :routes do
  Controllers.middleware.map(&:first).each do |mw|
    mw.each_route { |route|
    unless route.verb == "HEAD"
      puts "#{route.verb} #{route.path}  =>  #{mw.name}"
    end
  }
  end
end
