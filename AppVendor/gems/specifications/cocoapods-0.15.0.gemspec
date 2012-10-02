# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cocoapods"
  s.version = "0.15.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eloy Duran"]
  s.date = "2012-10-02"
  s.description = "CocoaPods manages library dependencies for your Xcode project.\n\nYou specify the dependencies for your project in one easy text file. CocoaPods resolves dependencies between libraries, fetches source code for the dependencies, and creates and maintains an Xcode workspace to build your project.\n\nUltimately, the goal is to improve discoverability of, and engagement in, third party open-source libraries, by creating a more centralized ecosystem."
  s.email = "eloy.de.enige@gmail.com"
  s.executables = ["pod"]
  s.files = ["bin/pod"]
  s.homepage = "https://github.com/CocoaPods/CocoaPods"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "An Objective-C library package manager."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<xcodeproj>, [">= 0.3.4"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.8.1"])
      s.add_runtime_dependency(%q<octokit>, ["~> 1.7"])
      s.add_runtime_dependency(%q<colored>, ["~> 1.2"])
      s.add_runtime_dependency(%q<escape>, ["~> 0.0.4"])
      s.add_runtime_dependency(%q<json>, ["~> 1.7.3"])
      s.add_runtime_dependency(%q<open4>, ["~> 1.3.0"])
      s.add_runtime_dependency(%q<rake>, ["~> 0.9.0"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.2.6"])
      s.add_development_dependency(%q<bacon>, ["~> 1.1"])
    else
      s.add_dependency(%q<xcodeproj>, [">= 0.3.4"])
      s.add_dependency(%q<faraday>, ["~> 0.8.1"])
      s.add_dependency(%q<octokit>, ["~> 1.7"])
      s.add_dependency(%q<colored>, ["~> 1.2"])
      s.add_dependency(%q<escape>, ["~> 0.0.4"])
      s.add_dependency(%q<json>, ["~> 1.7.3"])
      s.add_dependency(%q<open4>, ["~> 1.3.0"])
      s.add_dependency(%q<rake>, ["~> 0.9.0"])
      s.add_dependency(%q<activesupport>, ["~> 3.2.6"])
      s.add_dependency(%q<bacon>, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<xcodeproj>, [">= 0.3.4"])
    s.add_dependency(%q<faraday>, ["~> 0.8.1"])
    s.add_dependency(%q<octokit>, ["~> 1.7"])
    s.add_dependency(%q<colored>, ["~> 1.2"])
    s.add_dependency(%q<escape>, ["~> 0.0.4"])
    s.add_dependency(%q<json>, ["~> 1.7.3"])
    s.add_dependency(%q<open4>, ["~> 1.3.0"])
    s.add_dependency(%q<rake>, ["~> 0.9.0"])
    s.add_dependency(%q<activesupport>, ["~> 3.2.6"])
    s.add_dependency(%q<bacon>, ["~> 1.1"])
  end
end
