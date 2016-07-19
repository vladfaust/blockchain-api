# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blockchain/api/version'

Gem::Specification.new do |spec|
  spec.name          = "blockchain-api"
  spec.version       = Blockchain::API::VERSION
  spec.authors       = ["Vlad Faust"]
  spec.email         = ["tech@vladfaust.com"]

  spec.summary       = %q{Just another blockchain.info API v1 & v2 wrapper.}
  spec.homepage      = "https://github.com/vladfaust/blockchain-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
