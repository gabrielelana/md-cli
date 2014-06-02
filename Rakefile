require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

desc 'Run Cucumber tests'
Cucumber::Rake::Task.new(:features) do |t|
  opts = "features --format progress -x"
  opts += " --tags #{ENV['TAGS']}" if ENV['TAGS']
  t.cucumber_opts =  opts
  t.fork = false
end

desc 'Run RSpec tests'
RSpec::Core::RakeTask.new('spec')

task :default => [:spec,:features]
