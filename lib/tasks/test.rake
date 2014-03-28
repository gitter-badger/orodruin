namespace :test do
  task :coverage do
    require 'simplecov'
    Rake::Task['test:all'].execute
  end
end
