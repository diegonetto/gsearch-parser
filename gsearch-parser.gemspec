# -*- encoding: utf-8 -*-
require File.expand_path('../lib/gsearch-parser/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Diego Netto"]
  gem.email         = ["diegormnetto@gmail.com"]
  gem.description   = %q{Parses Google search results.}
  gem.summary       = %q{Provides an API for querying Google searches and parsing the results.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gsearch-parser"
  gem.require_paths = ["lib"]
  gem.version       = Gsearch::Parser::VERSION
end
