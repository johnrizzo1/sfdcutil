# -*- encoding: utf-8 -*-
require File.expand_path('../lib/Trustparser/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["John Rizzo"]
  gem.email         = ["johnrizzo1@gmail.com"]
  gem.description   = %q{This is a test gem.}
  gem.summary       = %q{This is a summary of teh test gem}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "Trustparser"
  gem.require_paths = ["lib"]
  gem.version       = Trustparser::VERSION

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
 
  gem.add_runtime_dependency 'nokogiri'
end
