# -*- encoding: utf-8 -*-
# stub: jekyll-mentions 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-mentions"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["GitHub, Inc."]
  s.date = "2014-12-18"
  s.email = "support@github.com"
  s.homepage = "https://github.com/jekyll/jekyll-mentions"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "@mention support for your Jekyll site"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>, ["~> 2.0"])
      s.add_runtime_dependency(%q<html-pipeline>, ["~> 1.9.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
    else
      s.add_dependency(%q<jekyll>, ["~> 2.0"])
      s.add_dependency(%q<html-pipeline>, ["~> 1.9.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
    end
  else
    s.add_dependency(%q<jekyll>, ["~> 2.0"])
    s.add_dependency(%q<html-pipeline>, ["~> 1.9.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
  end
end
