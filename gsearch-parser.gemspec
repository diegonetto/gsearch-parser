# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gsearch-parser"
  s.version = "0.3.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Diego Netto"]
  s.date = "2012-04-16"
  s.description = "Queries Google search and parses the resulting web page for content."
  s.email = "diegormnetto@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "gsearch-parser.gemspec",
    "lib/gsearch-parser.rb"
  ]
  s.homepage = "https://github.com/diegonetto/gsearch-parser"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.21"
  s.summary = "Google search result parser."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.5.2"])
    else
      s.add_dependency(%q<nokogiri>, ["~> 1.5.2"])
    end
  else
    s.add_dependency(%q<nokogiri>, ["~> 1.5.2"])
  end
end

