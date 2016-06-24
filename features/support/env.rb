
require 'capybara/cucumber'
require 'pry'
require 'ffaker'
require 'securerandom'



include Capybara::DSL

Capybara.default_driver = :selenium
Capybara.default_wait_time = 15
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
end

Capybara.javascript_driver = :internet_explorer