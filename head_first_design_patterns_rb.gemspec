# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'head_first_design_patterns_rb/version'

Gem::Specification.new do |spec|
  spec.name          = "head_first_design_patterns_rb"
  spec.version       = HeadFirstDesignPatternsRb::VERSION
  spec.authors       = ["Billy Watson"]
  spec.email         = ["billy@korrelate.com"]
  spec.description   = %q{Headfirst: Design Patterns book examples, written in Ruby}
  spec.summary       = %q{Read the book and then you'll know what's up}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit"
  spec.add_development_dependency "shoulda-context"
  spec.add_development_dependency "mocha"
end
