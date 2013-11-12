# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'codesake/gengiscan/version'

Gem::Specification.new do |spec|
  spec.name          = "codesake-gengiscan"
  spec.version       = Codesake::Gengiscan::VERSION
  spec.authors       = ["Paolo Perego"]
  spec.email         = ["paolo@armoredcode.com"]
  spec.description   = %q{codesake-gengiscan is part of the codesake.com project. It leverages the information gathering steps for a web application penetration test by fingerprinting the target.}
  spec.summary       = %q{codesake-gengiscan is a tool to fingerprint technology used in a web application}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency('nokogiri')
  spec.add_dependency('mechanize')
  spec.add_dependency('codesake-commons')
  spec.add_development_dependency('webmock')
end
