
class ShopCart<Setup


  def quickview
    @quickview = $driver.find_element(:xpath, "//*[@id='center_column']/ul/li/div/div[1]/div/a[1]/img")
    @quickview.click
    sleep(1)
  end


  def addToCart
      @addtocart = $driver.find_element(:id, "add_to_cart")
      @addtocart.click
      sleep(3)

  end

    def procCheckout
        @proccheck = $driver.find_element(:xpath, "//*[@id='layer_cart']/div[1]/div[2]/div[4]/a/span")
        @proccheck.click
        sleep(1)
    end

    def shopCartSummaryAssert
        @shopcartassert = $driver.find_element(:class, "navigation_page")
        (@shopcartassert.text).should == "Your shopping cart"
        sleep(1)
    end

    def procCheckoutPage
        @proccheck2 = $driver.find_element(:xpath, "//*[@id='center_column']/p[2]/a[1]/span")
        @proccheck2.click
        sleep(1)
    end

    def procCheckoutAddressPage
        @proccheckadd = $driver.find_element(:xpath, "//*[@id='center_column']/form/p/button/span")
        @proccheckadd.click
        sleep(1)
    end

  def shippingAssert
      @shippingassert = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Shipping'])[2]/following::h1[1]")
      (@shippingassert.text).should == "SHIPPING"
      sleep(1)
  end

  def termsofservice
      @terms = $driver.find_element(:id, "cgv")
      @terms.click
  end


    def procCheckoutShippingPage
        @proccheckship = $driver.find_element(:xpath, "//*[@id='form']/p/button/span")
        @proccheckship.click
        sleep(1)
    end

    def payment(paymenttype)
        @bank = $driver.find_element(:link, "Pay by bank wire (order processing will be longer)")
        @cheque = $driver.find_element(:link, "Pay by check (order processing will be longer)")
        case
        when paymenttype == "BANK-WIRE PAYMENT."
            @bank.click

        when paymenttype == "CHECK PAYMENT"
            @cheque.click
        end

    end

    def ordersummary (payment)
        @payment = $driver.find_element(:xpath, "//*[@id='center_column']/form/div/h3")
        (@payment.text).should == payment
    end

    def confirmorder
        @confirorder = $driver.find_element(:xpath, "//*[@id='cart_navigation']/button/span")
        @confirorder.click
        sleep(3)
    end

def ordercomplete(paymentcomplete)

  case
  when paymentcomplete == "CHECK PAYMENT"
    ($driver.find_element(:xpath, "//*[@id='center_column']/p[1]").text).should == "Your order on My Store is complete."

  when paymentcomplete == "BANK-WIRE PAYMENT."
    ($driver.find_element(:xpath, "/html/body/div/div[2]/div/div[3]/div/div/p/strong").text).should == "Your order on My Store is complete."

end


end


    end