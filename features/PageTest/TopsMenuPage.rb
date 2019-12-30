require 'selenium-webdriver'

class Tops < Setup

  def topsmenu(topsoption)
    @tshirts = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Tops'])[2]/following::a[1]")
    @blouses = $driver.find_element(:xpath, "//*[@id='categories_block_left']/div/ul/li[2]/a")

    case
    when topsoption == "T-shirts"
      @tshirts.click

    when topsoption == "Blouses"
      @blouses.click

    end

  end




end