require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'active_resource/railtie'
require 'rails/test_unit/railtie'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Kraeftemessen
  class Application < Rails::Application
    config.generators do |g|
      g.org :data_mapper
    end    
    config.encoding = "utf-8"
  end
end
