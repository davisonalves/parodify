require "capybara"
require "capybara/cucumber"
require_relative "helpers.rb"
require_relative "Actions"
require "allure-cucumber"

World(Helpers)
World(Actions)

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 4
  config.app_host = "http://parodify.qaninja.com.br/"
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
