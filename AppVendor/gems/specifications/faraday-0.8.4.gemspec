# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "faraday"
  s.version = "0.8.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rick Olson"]
  s.date = "2012-08-15"
  s.email = "technoweenie@gmail.com"
  s.homepage = "https://github.com/technoweenie/faraday"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "HTTP/REST API client library."

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multipart-post>, ["~> 1.1"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
    else
      s.add_dependency(%q<multipart-post>, ["~> 1.1"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
    end
  else
    s.add_dependency(%q<multipart-post>, ["~> 1.1"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
  end
end
