# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "singem/version"

Gem::Specification.new do |s|
  s.name        = "singem"
  s.version     = Singem::VERSION
  s.authors     = ["Corey Donohoe"]
  s.email       = ["atmos@atmos.org"]
  s.homepage    = "http://github.com/atmos/singem"
  s.summary     = %q{A gem that provides generators for sinatra apps, ready to go with rack-test and others}
  s.description = s.summary

  s.rubyforge_project = "singem"

  s.add_dependency "rubigen", "~>1.5.2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
