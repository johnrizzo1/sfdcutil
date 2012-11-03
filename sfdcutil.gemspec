# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require './lib/sfdcutil/version'

Gem::Specification.new do |gem|
  gem.name          = "sfdcutil"

  gem.description   = %q{This is a utility for querying the Salesforce.com trust site and printing the instance status.}
  gem.summary       = %q{This is a utility for querying the Salesforce.com trust site and printing the instance status.}

  gem.authors       = ["John Rizzo"]
  gem.email         = %w(johnrizzo1@gmail.com)
  gem.homepage      = "http://github.com/johnrizzo1/sfdcutil"

  gem.files         = `git ls-files`.split($\)
  #gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.executables   = ["sfdcutil"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  gem.require_paths = %w(lib)
  gem.version       = SFDCUtil::VERSION

  gem.add_development_dependency 'ruby-debug19'

  gem.add_development_dependency 'rake'

  gem.add_development_dependency 'travis-lint'   # Validator for the travis config

  gem.add_development_dependency 'rspec'         # human readable tests
  gem.add_development_dependency 'cucumber'      # For capturing and testing requirements
  gem.add_development_dependency 'test-unit'     # For all other unit tests?
  gem.add_development_dependency 'aruba'         # For testing command line interfaces

  gem.add_development_dependency 'simplecov'     # Code Coverage


  gem.add_runtime_dependency 'nokogiri'
  gem.add_runtime_dependency 'thor'
  gem.add_runtime_dependency 'term-ansicolor'
end
