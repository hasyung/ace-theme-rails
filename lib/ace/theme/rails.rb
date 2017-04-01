require "ace/theme/rails/version"

module Ace
  module Theme
    module Rails
      require "ace/theme/rails/engine" if defined?(Rails)
    end
  end
end
