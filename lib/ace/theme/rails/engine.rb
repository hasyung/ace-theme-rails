require "rails"

require "ace/theme/rails/twitter_bootstrap_breadcrumbs.rb"

module Ace
  module Theme
    module Rails
      class Engine < ::Rails::Engine

        initializer 'twitter-bootstrap.setup_helpers' do |app|
          app.config.to_prepare do
            ActionController::Base.send :include, BreadCrumbs
          end
        end
        
      end
    end
  end
end
