# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'market_data/version'

Gem::Specification.new do |spec|
  spec.name          = "market_data"
  spec.version       = MarketData::VERSION
  spec.authors       = ["Sheng-Loong Su"]
  spec.email         = ["sushengloong@gmail.com"]
  spec.description   = %q{Retrieve market data such as stock quotes, charts and news}
  spec.summary       = %q{Retrieve market data such as stock quotes, charts and news}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.0.6"
end
