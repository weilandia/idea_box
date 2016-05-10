require 'rake/tasklib'
require 'rake/sprocketstask'
require './config/environment'

Dir['./lib/tasks/*.rake'].each { |f| load f }

task default: :spec
task test: :spec
