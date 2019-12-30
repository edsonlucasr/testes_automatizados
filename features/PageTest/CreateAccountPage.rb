require 'selenium-webdriver'

class CreateAccount < Setup

    def title (title)
    @titleMr = $driver.find_element(:id, 'id_gender1')
    @titleMs = $driver.find_element(:id, 'id_gender2')
     case
       when title == "Mr."
           @titleMr.click
       when title == "Mrs."
           @titleMs.click
       end


    end

    def FirstName (name)
     @firstname = $driver.find_element(:id, "customer_firstname")
     @firstname.send_keys(name)
     @firstname.send_keys :tab

    end

    def LastName (lastname)
        @lastname = $driver.find_element(:id, "customer_lastname")
        @lastname.send_keys(lastname)
        @lastname.send_keys :tab

    end


    def email (email)
        @email = $driver.find_element(:id, "email")
        @email.send_keys(email)

    end


    def password (password)
        @password = $driver.find_element(:id, "passwd")
        @password.send_keys(password)

    end

    def birthday (birthday)
        @birthday = $driver.find_element(:id, "days")

    end

    def birthmonth (birthmonth)
        @birthmonth = $driver.find_element(:id, "months")

    end

    def birthyear (birthyear)
        @birthyear = $driver.find_element(:id, "years")
    end



    def AddressFirstName (adname)
        @adfirstname = $driver.find_element(:id, "firstname")
        @adfirstname.send_keys(adname)

    end

    def AddressLastName (adlname)
        @adlastname = $driver.find_element(:id, "lastname")
        @adlastname.send_keys(adlname)

    end

    def Address (address)
        @address = $driver.find_element(:id, "address1")
        @address.send_keys(address)

    end


    def City (city)
        @city = $driver.find_element(:id, "city")
        @city.send_keys(city)

    end

    def State (state)
        @state = $driver.find_element(:id, "id_state")
        @statelist = Selenium::WebDriver::Support::Select.new(@state)
        @statelist.select_by(:text,state)


    end

    def ZipCode (zipcode)
        @zipcode = $driver.find_element(:id, "postcode")
        @zipcode.send_keys(zipcode)

    end

    def Country (country)
        @country = $driver.find_element(:id, "id_country")

    end

    def MobilePhone (mphone)
        @mobilephone = $driver.find_element(:id, "phone_mobile")
        @mobilephone.send_keys(mphone)

    end



    def register
        @register = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='DNI / NIF / NIE'])[1]/following::span[1]")
        @register.click
        sleep(2)
    end

    def myaccountvalid
        @myaccountvalid = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='My account'])[1]/following::h1[1]")
        (@myaccountvalid.text).should == "MY ACCOUNT"
    end


    end