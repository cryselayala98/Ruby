# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "Esqueleto_proyecto/version"

Gem::Specification.new do |s|
    s.name = "esqueleto_proyecto"
    s.version = Esqueleto_proyecto::VERSION
    s.authors = ["Crisel Ayala"]
    s.email = ["criselayala98@gmail.com"]
    s.homepage = ""
    s.summary = %q{TODO: Write a gem summary}
    s.description = %q{TODO: Write a gem description}
    s.rubyforge_project = "Esqueleto_proyecto"

    s.files = `git ls-files`.split("\n")
    s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
    s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
    s.require_paths = ["lib"]
end


