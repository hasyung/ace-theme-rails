# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ace/theme/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "ace-theme-rails"
  spec.version       = Ace::Theme::Rails::VERSION
  spec.authors       = ["ChuckLee"]
  spec.email         = ["sapronlee@gmail.com"]
  spec.description   = %q{Ruby on Rails CSS and JS Theme}
  spec.summary       = %q{Ruby on Rails CSS and JS Theme}
  spec.homepage      = "http://www.sapronlee.com"
  spec.license       = "MIT"

  spec.files         = Dir["vendor/**/*"] + Dir["lib/**/*"] + ["README.md", "Rakefile"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_runtime_dependency     "slim-rails", "~> 1.1.1"

  spec.add_development_dependency "bundler",    "~> 1.3"
  spec.add_development_dependency "rake"
end
