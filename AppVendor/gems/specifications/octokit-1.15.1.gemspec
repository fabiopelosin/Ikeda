# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "octokit"
  s.version = "1.15.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Wynn Netherland", "Erik Michaels-Ober", "Clint Shryock"]
  s.date = "2012-09-24"
  s.description = "Simple wrapper for the GitHub v3 API"
  s.email = ["wynn.netherland@gmail.com", "sferik@gmail.com", "clint@ctshryock.com"]
  s.homepage = "https://github.com/pengwynn/octokit"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Simple wrapper for the GitHub v3 API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>, ["~> 2.2"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.8"])
      s.add_runtime_dependency(%q<faraday_middleware>, ["~> 0.8"])
      s.add_runtime_dependency(%q<hashie>, ["~> 1.2"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.3"])
      s.add_development_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<maruku>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<addressable>, ["~> 2.2"])
      s.add_dependency(%q<faraday>, ["~> 0.8"])
      s.add_dependency(%q<faraday_middleware>, ["~> 0.8"])
      s.add_dependency(%q<hashie>, ["~> 1.2"])
      s.add_dependency(%q<multi_json>, ["~> 1.3"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<maruku>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<addressable>, ["~> 2.2"])
    s.add_dependency(%q<faraday>, ["~> 0.8"])
    s.add_dependency(%q<faraday_middleware>, ["~> 0.8"])
    s.add_dependency(%q<hashie>, ["~> 1.2"])
    s.add_dependency(%q<multi_json>, ["~> 1.3"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<maruku>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end
