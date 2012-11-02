require 'rubygems'
#require 'bundler'
#require 'bundler/setup'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

# Validate the Travis config file
desc "Testing travis config"
task :travis do
  system "travis-lint"
end

require 'rdoc/task'

Rake::RDocTask.new(:rdoc) do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "sfdcutil #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
  rdoc.rdoc_files.include('LICENSE*')
  rdoc.rdoc_files.include('VERSIONS*')
  rdoc.rdoc_files.include('COPYING*')
  rdoc.rdoc_files.exclude('.idea*')
end

require 'cucumber'
require 'cucumber/rake/task'
desc "Test Cucumber Features"
Cucumber::Rake::Task.new(:features, 'sfdcutil')
# do |t|
#  t.cucumber_opts = "features --format pretty"
#end

task :default => [:spec, :travis]
task :test => [:spec, :features]
