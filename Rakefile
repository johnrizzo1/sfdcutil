require 'rubygems'
#require 'bundler'
#require 'bundler/setup'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

desc "Validate the Travis config"
task :travis do
  system "travis-lint"
end

require 'rdoc/task'
desc "Generate RDOC documentation"
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
desc "Test Features"
Cucumber::Rake::Task.new(:features, 'sfdcutil')

desc "Run the default tasks"
task :default => [:spec, :travis]

desc "Run All Tests"
task :test => [:spec, :features]
