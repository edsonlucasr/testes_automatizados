require 'selenium-webdriver'
require 'rubygems'

class Home < Setup

    def openSite (url,browser)

      case
      when browser == "chrome"
        $driver=Selenium::WebDriver.for :chrome
      when browser == "firefox"
        $driver=Selenium::WebDriver.for :firefox
      end


        #$driver.manage.window.Cookies.deleteallcookies
        $driver.manage.window.maximize
        $driver.navigate.to url
    end





    def signin
        sleep(1)
        return $driver.find_element(:link, "Sign in").click
    end

   def womenmenu
       return $driver.find_element(:link, "Women").click
   end

    def dressesmenu
        return $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Blouses'])[2]/following::a[1]").click
        sleep(1)
    end

    def topsmenu
        return $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Women'])[3]/following::a[1]").click
    end


    def print (cenario)
      $driver.save_screenshot "./screentests/#{Time.now.strftime(cenario+"_%d_%m_%Y__%H_%M_%S")}.png"
    end



    end