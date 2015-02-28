# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emagen/version'

Gem::Specification.new do |spec|
  spec.name          = "emagen"
  spec.version       = Emagen::VERSION
  spec.authors       = ["Louis Sayers"]
  spec.email         = ["lssayers@gmail.com"]
  spec.summary       = %q{Generate possible email addresses given a name and domain.}
  spec.description   = %q{Generate possible email addresses given a name and domain.}
  spec.homepage      = "https://github.com/LouisSayers/Emagen"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry-nav'
end
