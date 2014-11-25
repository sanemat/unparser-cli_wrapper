# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unparser/cli_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = 'unparser-cli_wrapper'
  spec.version       = Unparser::CliWrapper::VERSION
  spec.authors       = ['sanemat']
  spec.email         = ['o.gata.ken@gmail.com']
  spec.summary       = 'Enable stdin with ruby-unparse.'
  spec.description   = 'Replace "-" with STDIN like unix option.'
  spec.homepage      = 'https://github.com/sanemat/unparser-cli_wrapper'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'unparser'
  spec.add_dependency 'diff-lcs' # until unparser v0.1.17
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
