require './config/environment'
require 'faker'

namespace :db do
  desc 'Purge database'
  task :drop do
    Mongoid.purge!
  end

  desc 'Load test data'
  task :seed do
    25.times do
      Idea.create(title: Faker::Hipster.word, body: Faker::Hipster.sentence)
      puts "Idea created."
    end
  end

  desc 'Resets database'
  task :reset do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:seed'].invoke
  end
end
