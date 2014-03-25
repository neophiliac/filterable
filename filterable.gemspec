# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'filterable/version'

Gem::Specification.new do |spec|
  spec.name          = "filterable"
  spec.version       = Filterable::VERSION
  spec.authors       = ["Kurt Sussman"]
  spec.email         = ["kls@merlot.com"]
  spec.summary       = %q{Add filter method to models that takes a params hash to specify scopes and values to match}
  spec.homepage      = "http://github.com/neophiliac/filterable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "sqlite3"
end
