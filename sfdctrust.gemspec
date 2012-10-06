# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'sfdcutil/version'
#require File.expand_path('../lib/sfdcutil/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["John Rizzo"]
  gem.email         = %w(johnrizzo1@gmail.com)
  gem.description   = %q{This is a utility for querying the Salesforce.com trust site and printing the instance status.}
  gem.summary       = %q{This is a utility for querying the Salesforce.com trust site and printing the instance status.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sfdcutil"
  #gem.require_paths = ["sfdcutil"]
  gem.require_paths = %w(lib)
  gem.version       = SFDCUtil::VERSION

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
 
  gem.add_runtime_dependency 'nokogiri'
end
