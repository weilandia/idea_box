require './config/environment'

namespace :db do
  desc 'Load test data'
  task :seed do
    25.times do
      Idea.create(title: Faker::Hipster.word, body: Faker::Hipster.sentence)
      puts "Idea created."
    end
  end
end
