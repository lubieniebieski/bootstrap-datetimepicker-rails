# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap-datetimepicker-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "bootstrap-datetimepicker-rails"
  gem.version       = BootstrapDatetimepicker::Rails::VERSION
  gem.authors       = ["Adam Nowak"]
  gem.email         = ["lubieniebieski@gmail.com"]
  gem.description   = %q{This gem packages the bootstrap-datetimepicker (JavaScripts & stylesheets) for Rails 3.1+ asset pipeline}
  gem.summary       = %q{bootstrap-datetimepicker's JavaScripts & stylesheets for Rails 3.1+ asset pipeline}
  gem.homepage      = "https://github.com/lubieniebieski/bootstrap-datetimepicker-rails"
  gem.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
end
