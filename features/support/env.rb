require 'minitest/unit'
class MiniTest::Unit
  class << self
    @@installed_at_exit = true
  end
end

require 'simplecov'
require 'coveralls'
SimpleCov.start 'rails'
require 'cucumber/rails'
require 'capybara/poltergeist' # Poltergeist integration

Capybara.configure do |config|
  config.exact = true
  config.exact_options = true
  config.ignore_hidden_elements = true
  config.javascript_driver = :poltergeist
  config.default_selector = :css
  config.default_wait_time = 5
end

ActionController::Base.allow_rescue = false

DatabaseCleaner.strategy = :transaction

Cucumber::Rails::Database.javascript_strategy = :truncation
