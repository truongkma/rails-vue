require "rails-vue/version"
require "rails-vue/view_helper"
require "rails-vue/engine"

module Vue
  mattr_accessor :development_mode
  self.development_mode = defined?(::Rails) && ::Rails.env.development?

  class << self
    def full_or_minified(asset_name)
      development_mode ? "dist/#{asset_name}.js" : "dist/#{asset_name}.min.js"
    end
  end
end
