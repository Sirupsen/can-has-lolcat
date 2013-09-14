# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "can-has-lolcat"
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sirupsen"]
  s.date = "2011-10-29"
  s.description = "Fetches a random lolcat, and returns the appropriate output format."
  s.email = "sirup@sirupsen.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/can-has-lolcat.rb",
    "test/fixtures/lolcat.html",
    "test/helper.rb",
    "test/test_can-has-lolcat.rb"
  ]
  s.homepage = "http://github.com/Sirupsen/can-has-lolcat"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "can haz random lolcat?"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end

