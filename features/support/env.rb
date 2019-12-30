require 'cucumber'
require 'selenium/webdriver'
require 'capybara'
require 'capybara/cucumber'


After do
    $driver.quit
end
