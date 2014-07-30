# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stox/version'

Gem::Specification.new do |spec|
  spec.name          = "stox"
  spec.version       = Stox::VERSION
  spec.authors       = ["Jay Wengrow"]
  spec.email         = ["jaywngrw@gmail.com"]
  spec.summary       = %q{Get a quick stock quote from the command line.}
  spec.description   = %q{Get a quick stock quote from the command line. Because you're a nerd.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "stock_quote", "~> 1.1.8"
end
