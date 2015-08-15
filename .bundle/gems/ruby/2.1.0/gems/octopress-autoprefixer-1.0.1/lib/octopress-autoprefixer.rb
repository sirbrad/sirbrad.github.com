require 'octopress-autoprefixer/version'
require 'autoprefixer-rails'
require 'find'

module Octopress
  module AutoPrefixer

    if defined?(Jekyll::Hooks)
      Jekyll::Hooks.register :site, :post_write, priority: :low do |site|
        AutoPrefixer.process(site)
      end
    else
      require 'octopress-hooks'
      class SiteHooks < Hooks::Site
        @priority = :low

        def post_write(site)
          AutoPrefixer.process(site)
        end
      end
    end

    def self.find_stylesheets(dir)
      return [] unless Dir.exist? dir
      Find.find(dir).to_a.reject {|f| File.extname(f) != '.css' }
    end

    def self.process(site)
      find_stylesheets(site.config['destination']).each do |file|
        prefix(file)
      end
    end

    def self.prefix(stylesheet)
      content = File.open(stylesheet).read
      File.open(stylesheet, 'w') do |f|
        f.write(AutoprefixerRails.process(content))
      end
    end
  end
end
