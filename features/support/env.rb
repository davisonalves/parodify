require "capybara"
require "capybara/cucumber"
require_relative "helpers.rb"
require "allure-cucumber"

World(Helpers)

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 4
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end