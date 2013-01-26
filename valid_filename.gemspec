# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'valid_filename/version'

Gem::Specification.new do |gem|
  gem.name          = "valid_filename"
  gem.version       = ValidFilename::VERSION
  gem.authors       = ["derekbailey"]
  gem.email         = ["4uauaua@gmail.com"]
  gem.description   = %q{replace invalid chars}
  gem.summary       = %q{replace invalid chars}
  gem.homepage      = "https://github.com/derekbailey/valid_filename"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
