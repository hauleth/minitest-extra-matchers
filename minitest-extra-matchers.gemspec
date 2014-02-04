# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/extra/matchers/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest-extra-matchers"
  spec.version       = Minitest::Extra::Matchers::VERSION
  spec.authors       = ["Łukasz Niemier"]
  spec.email         = ["lukasz@niemier.pl"]
  spec.summary       = %q{Extra matchers for MiniTest::Spec that simplify specs}
  spec.description   = %q{Add bunch of 'new' matchers to MiniTest::Spec that
  allow you to write your specs more like in RSpec, but keeping MiniTest simplicity}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'minitest', '~> 5.0'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
