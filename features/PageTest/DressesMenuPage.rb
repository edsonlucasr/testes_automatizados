require 'selenium-webdriver'

class Dresses < Setup

  def dressesmenu(dressoption)
    @casuadresses = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Dresses'])[3]/following::a[1]")
    @eveningdresses = $driver.find_element(:xpath, "/html/body/div/div[2]/div/div[3]/div[1]/div[1]/div/ul/li[2]/a")
    @summerdresses = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Evening Dresses'])[3]/following::a[1]")

    case
    when dressoption == "Casual Dresses"
      @casuadresses.click

    when dressoption == "Evening Dresses"
      @eveningdresses.click

    when dressoption == "Summer Dresses"
      @summerdresses.click
    end

  end

    def dressesmenuassert(message)
      @dressmenuassert = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Discover our stores'])[1]/following::span[1]")
      (@dressmenuassert.text).should == (message)
    end




      end

