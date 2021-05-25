require "capybara"
require "capybara/cucumber"
require_relative "helpers.rb"

World(Helpers)

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
