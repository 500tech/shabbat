# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shabbat/version'

Gem::Specification.new do |spec|
  spec.name          = "shabbat"
  spec.version       = Shabbat::VERSION
  spec.authors       = ["adam klein"]
  spec.email         = ["adamklein.mail@gmail.com"]
  spec.summary       = "All the jewish shortcuts you need"
  spec.description   = "Extends Date and Time classes to add common jewish methods like Date.today.shabbat?, Date.next_shabbat, etc."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.4"
  spec.add_development_dependency "rake"
end
