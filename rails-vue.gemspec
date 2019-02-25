# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails-vue/version"

Gem::Specification.new do |s|
  s.name        = "rails-vue"
  s.version     = Rails::Vue::VERSION
  s.authors     = ["truongkma"]
  s.email       = ["nguyendactruong.kma@gmail.com"]
  s.homepage    = "https://github.com/truongkma/rails-vue"
  s.summary     = "Vuejs asset pipeline provider/wrapper"
  s.description = "A simple assets pipeline wrapper for Vuejs"
  s.license     = "MIT"
  s.date        = "2019-02-22"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
