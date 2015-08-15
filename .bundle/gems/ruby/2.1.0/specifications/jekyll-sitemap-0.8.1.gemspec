# -*- encoding: utf-8 -*-
# stub: jekyll-sitemap 0.8.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-sitemap"
  s.version = "0.8.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["GitHub, Inc."]
  s.date = "2015-03-11"
  s.email = "support@github.com"
  s.homepage = "https://github.com/jekyll/jekyll-sitemap"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Automatically generate a sitemap.xml for your Jekyll site."

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jekyll>, ["~> 2.0"])
      s.add_development_dependency(%q<jekyll-last-modified-at>, ["= 0.3.4"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
    else
      s.add_dependency(%q<jekyll>, ["~> 2.0"])
      s.add_dependency(%q<jekyll-last-modified-at>, ["= 0.3.4"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
    end
  else
    s.add_dependency(%q<jekyll>, ["~> 2.0"])
    s.add_dependency(%q<jekyll-last-modified-at>, ["= 0.3.4"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
  end
end
