# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "faraday_middleware"
  s.version = "0.8.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Erik Michaels-Ober", "Wynn Netherland"]
  s.date = "2012-06-24"
  s.description = "Various middleware for Faraday"
  s.email = ["sferik@gmail.com", "wynn.netherland@gmail.com"]
  s.homepage = "https://github.com/pengwynn/faraday_middleware"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Various middleware for Faraday"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["< 0.9", ">= 0.7.4"])
      s.add_development_dependency(%q<multi_xml>, ["~> 0.2"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<hashie>, ["~> 1.2"])
      s.add_development_dependency(%q<rash>, ["~> 0.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
      s.add_development_dependency(%q<simple_oauth>, ["~> 0.1"])
      s.add_development_dependency(%q<rack-cache>, ["~> 1.1"])
    else
      s.add_dependency(%q<faraday>, ["< 0.9", ">= 0.7.4"])
      s.add_dependency(%q<multi_xml>, ["~> 0.2"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<hashie>, ["~> 1.2"])
      s.add_dependency(%q<rash>, ["~> 0.3"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
      s.add_dependency(%q<simple_oauth>, ["~> 0.1"])
      s.add_dependency(%q<rack-cache>, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<faraday>, ["< 0.9", ">= 0.7.4"])
    s.add_dependency(%q<multi_xml>, ["~> 0.2"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<hashie>, ["~> 1.2"])
    s.add_dependency(%q<rash>, ["~> 0.3"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
    s.add_dependency(%q<simple_oauth>, ["~> 0.1"])
    s.add_dependency(%q<rack-cache>, ["~> 1.1"])
  end
end
