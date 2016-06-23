
require 'capybara/cucumber'
require 'pry'


include Capybara::DSL

Capybara.default_driver = :selenium

Capybara.default_wait_time = 15

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :chrome