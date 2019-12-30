
class Setup
    $driver = nil
def self_setup
  #  $driver=Selenium::WebDriver.for :chrome
    $driver=Selenium::WebDriver.for :firefox
    $driver.manage.window.maximize
    $driver.navigate.to url
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)

end


end