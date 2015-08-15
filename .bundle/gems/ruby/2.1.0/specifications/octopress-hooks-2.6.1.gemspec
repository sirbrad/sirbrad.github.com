# -*- encoding: utf-8 -*-
# stub: octopress-hooks 2.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "octopress-hooks"
  s.version = "2.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Brandon Mathis"]
  s.date = "2015-05-11"
  s.email = ["brandon@imathis.com"]
  s.homepage = "http://github.com/octopress/hooks"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Allows access to Jekyll's site, posts and pages at different points in the life cycle of a build. Formerly known as 'jekyll-page-hooks'."

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>, [">= 2.0"])
      s.add_development_dependency(%q<clash>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<pry-byebug>, [">= 0"])
    else
      s.add_dependency(%q<jekyll>, [">= 2.0"])
      s.add_dependency(%q<clash>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<pry-byebug>, [">= 0"])
    end
  else
    s.add_dependency(%q<jekyll>, [">= 2.0"])
    s.add_dependency(%q<clash>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<pry-byebug>, [">= 0"])
  end
end
