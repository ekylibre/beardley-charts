# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'beardley/charts/version'

Gem::Specification.new do |spec|
  spec.name          = "beardley-charts"
  spec.version       = Beardley::Charts::VERSION
  spec.authors       = ["Brice Texier"]
  spec.email         = ["burisu@oneiros.fr"]
  spec.description   = %q{Charts for Beardley}
  spec.summary       = %q{Charts for Beardley}
  spec.homepage      = "http://github.com/burisu/beardley-charts"
  spec.license       = "MIT"

  spec.files         = `git ls-files LICENSE.txt README.md lib vendor`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "beardley"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
