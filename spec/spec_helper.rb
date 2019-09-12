# frozen_string_literal: true

require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
  # Specify the Chef log_level (default: :warn)
  # config.log_level = :info

  # Specify the path to a local JSON file with Ohai data (default: nil)
  # config.path = 'ohai.json'
end
