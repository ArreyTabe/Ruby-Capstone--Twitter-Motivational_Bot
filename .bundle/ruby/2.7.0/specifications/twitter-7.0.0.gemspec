# -*- encoding: utf-8 -*-
# stub: twitter 7.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "twitter".freeze
  s.version = "7.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Erik Michaels-Ober".freeze, "John Nunemaker".freeze, "Wynn Netherland".freeze, "Steve Richert".freeze, "Steve Agalloco".freeze]
  s.date = "2020-02-12"
  s.description = "A Ruby interface to the Twitter API.".freeze
  s.email = ["sferik@gmail.com".freeze]
  s.homepage = "http://sferik.github.com/twitter/".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "A Ruby interface to the Twitter API.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<addressable>.freeze, ["~> 2.3"])
    s.add_runtime_dependency(%q<buftok>.freeze, ["~> 0.2.0"])
    s.add_runtime_dependency(%q<equalizer>.freeze, ["~> 0.0.11"])
    s.add_runtime_dependency(%q<http>.freeze, ["~> 4.0"])
    s.add_runtime_dependency(%q<http-form_data>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<http_parser.rb>.freeze, ["~> 0.6.0"])
    s.add_runtime_dependency(%q<memoizable>.freeze, ["~> 0.4.0"])
    s.add_runtime_dependency(%q<multipart-post>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<naught>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<simple_oauth>.freeze, ["~> 0.3.0"])
  else
    s.add_dependency(%q<addressable>.freeze, ["~> 2.3"])
    s.add_dependency(%q<buftok>.freeze, ["~> 0.2.0"])
    s.add_dependency(%q<equalizer>.freeze, ["~> 0.0.11"])
    s.add_dependency(%q<http>.freeze, ["~> 4.0"])
    s.add_dependency(%q<http-form_data>.freeze, ["~> 2.0"])
    s.add_dependency(%q<http_parser.rb>.freeze, ["~> 0.6.0"])
    s.add_dependency(%q<memoizable>.freeze, ["~> 0.4.0"])
    s.add_dependency(%q<multipart-post>.freeze, ["~> 2.0"])
    s.add_dependency(%q<naught>.freeze, ["~> 1.0"])
    s.add_dependency(%q<simple_oauth>.freeze, ["~> 0.3.0"])
  end
end
