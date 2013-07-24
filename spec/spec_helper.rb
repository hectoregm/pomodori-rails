require 'coveralls'
Coveralls.wear_merged!('rails')
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rspec' # Capybara integration
require 'capybara/poltergeist' # Poltergeist integration

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|

  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true

  config.infer_base_class_for_anonymous_controllers = false

  config.order = "random"
end

Capybara.javascript_driver = :poltergeist
Capybara.default_wait_time = 5
Capybara.ignore_hidden_elements = false
