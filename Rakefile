require 'rake/tasklib'
require 'rake/sprocketstask'

Dir['./lib/tasks/*.rake'].each { |f| load f }

task default: :spec
task test: :spec
