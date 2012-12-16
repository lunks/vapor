# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vapor/version'

Gem::Specification.new do |gem|
  gem.name          = "vapor"
  gem.version       = Vapor::VERSION
  gem.authors       = ["Pedro Nascimento"]
  gem.email         = ["pedro@helabs.com.br"]
  gem.description   = %q{Retrieve user information from Steam.}
  gem.summary       = %q{Vapor shows what games an user has played on Steam, and for how long.}
  gem.homepage      = "http://helabs.com.br/opensource"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'httpclient', '~> 2.3.0'
  gem.add_runtime_dependency 'activesupport', '> 3'
  gem.add_runtime_dependency 'nokogiri', '~> 1.5.5'
  gem.add_development_dependency 'rake', '~> 10.0.1'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'rspec', '~> 2.12.0'
  gem.add_development_dependency 'vcr', '~> 2.3.0'
  gem.add_development_dependency 'webmock', ['> 1.8.0','< 1.9.0']
end
