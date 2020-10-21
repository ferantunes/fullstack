require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

require_relative "helpers"

# método nativo que pode ser invocado a qqr momento e em qqr lugar
World(Helpers)

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = "http://127.0.0.1:8080"
end