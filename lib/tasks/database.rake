require './config/environment'

namespace :db do
  desc 'Resets database'
  task :reset do
    Mongoid.default_session.drop
    Rake::Task['db:seed'].invoke
  end

  desc 'Purge database'
  task :drop do
    Mongoid.default_session.drop
  end
end
