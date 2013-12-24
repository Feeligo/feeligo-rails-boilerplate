# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

# from
# http://www.jeremydurham.com/posts/162-simple-rake-task-to-allow-multiple-seeds
# allows to do rake db:seed:x where “x” is a file in the db/seeds
# directory:
namespace :db do
  namespace :seed do
    Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |seed_file|
      puts "seed_file #{seed_file}"
      task_name = File.basename(seed_file, '.rb').intern
      desc "Load the seed data from db/seeds/#{task_name}.rb"
      task task_name => :environment do
        load(seed_file) if File.exist?(seed_file)
      end
    end
  end
end

FeeligoRailsBoilerplate::Application.load_tasks
