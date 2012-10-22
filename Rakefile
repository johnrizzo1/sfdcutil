#!/usr/bin/env rake
require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new

task :default => [:spec, :test_travis]
task :test => [:spec, :test_travis]

desc "Testing travis config"
task :test_travis do
  puts 'Testing travis config'
  require 'rubygems'
  version = ">= 0"
  gem 'travis-lint', version
  load Gem.bin_path('travis-lint', 'travis-lint', version)
end