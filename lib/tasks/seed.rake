namespace :db do
  desc 'Load test data'
  task :seed do
    $db['ideas'].remove
    ideas = $db['ideas']
  end
end
