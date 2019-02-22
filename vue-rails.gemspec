# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vue-rails/version"

Gem::Specification.new do |s|
  s.name        = "vue-rails"
  s.version     = Vue::Rails::VERSION
  s.authors     = ["truongkma"]
  s.email       = ["nd.truong1902@gmail.com"]
  s.homepage    = "https://github.com/truongkma/vue-rails"
  s.summary     = "Vuejs asset pipeline provider/wrapper"
  s.description = "A simple assets pipeline wrapper for Vuejs"
  s.license     = "MIT"
  s.date        = "2019-02-22"

  s.rubyforge_project = "vue-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
