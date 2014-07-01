# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hummingbird/version'

Gem::Specification.new do |spec|
  spec.add_dependency "rest-client", "~> 1.6.7"
  spec.add_dependency 'multi_json', '~> 1.8'
  
  spec.name          = 'hummingbird'
  spec.version       = DocumentCloud::Version
  spec.description   = "RubyGem for interacting with the Hummingbird API"
  spec.summary       = spec.description
  spec.authors       = ["Miles Zimmerman"]
  spec.email         = ['miles@zserver.org']
  spec.homepage      = 'https://github.com/chapmanu/hummingbird-gem'
  spec.licenses      = ['MIT']
  
  spec.files         = %w(LICENSE README.md hummingbird.gemspec)
  spec.files        += Dir.glob("lib/**/*.rb")
  
  spec.require_paths = ['lib']
end
