# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'socialite_js/source/version'

Gem::Specification.new do |gem|
  gem.name          = "socialite_js-source"
  gem.version       = SocialiteJs::Source::VERSION
  gem.authors       = ["Deepak Kannan"]
  gem.email         = ["kannan.deepak@gmail.com"]

  gem.summary       = %q{rubygems shell over socialite.js}
  gem.description   = %q{JavaScript source code for socialite.js wrapped in a rubygems shell. socialite.js is a library to display social sharing buttons. check http://socialitejs.com/}
  gem.homepage      = "https://github.com/deepak/socialite_js-source"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "debugger",     "~> 1.5.0"
end
