# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hello_world/version'

Gem::Specification.new do |gem|
  gem.name          = "hello_world"
  gem.version       = HelloWorld::VERSION
  gem.authors       = ["lccezinha"]
  gem.email         = ["lccezinha@gmail.com"]
  gem.description   = %q{First ruby gem by myself}
  gem.summary       = %q{First ruby gem }
  gem.homepage      = "http://www.github.com/lccezinha"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
