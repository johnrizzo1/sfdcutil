# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require './lib/sfdcutil/version'

Gem::Specification.new do |gem|
  gem.name          = "sfdcutil"
  gem.description   = %q{This is a command line utility for interacting with the Salesforce.com platform.}
  gem.summary       =
      """
      This is a command line utility for interacting with the Salesforce.com platform.  It is currently
      able to query the trust site and print out the POD status.  Soon it will support general queries.
      Ultimately I would like the utility to support the following;
      * querying and modifying the config
      * creating objects
      * bulk data loading/extracting
      * comparing/merging multiple sites
      """

  gem.authors       = ["John Rizzo"]
  gem.email         = %w(johnrizzo1@gmail.com)
  gem.homepage      = "http://github.com/johnrizzo1/sfdcutil"

  gem.files         = `git ls-files`.split($\)
  #gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.executables   = ["sfdcutil"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  gem.require_paths = %w(lib)
  gem.version       = SFDCUtil::VERSION

  #
  # Development Dependencies
  gem.add_development_dependency 'ruby-debug19' # For debugging with RubyMine

  gem.add_development_dependency 'rake'         # Used to manage the development process

  gem.add_development_dependency 'travis-lint'  # Validator for the travis config

  gem.add_development_dependency 'rspec'        # human readable unit tests
  gem.add_development_dependency 'cucumber'     # For capturing and testing Business Requirements
  gem.add_development_dependency 'test-unit'    # For all other unit tests?
  gem.add_development_dependency 'aruba'        # For testing command line interfaces

  gem.add_development_dependency 'simplecov'    # Code Coverage
  gem.add_development_dependency 'wirble'       # Tab completion/color in irb

  #
  # Runtime Dependencies
  gem.add_runtime_dependency 'nokogiri'         # Used to query the trust site and parse the html
  gem.add_runtime_dependency 'thor'             # Simple way to create command line interfaces
  gem.add_runtime_dependency 'term-ansicolor'   # For printing in fancy colors
  gem.add_runtime_dependency 'databasedotcom'   # For querying the salesforce database
  #gem.add_runtime_dependency 'rb-readline'		# For collecting input on the command line
  #gem.add_runtime_dependency 'highline'
  #gem.add_runtime_dependency 'hirb'
  gem.add_runtime_dependency 'formatador'
end
