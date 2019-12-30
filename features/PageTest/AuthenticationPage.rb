
class Auth<Setup


    def emailaddress(email)

        @randomnumber = rand 0001..9999
        @emailaddress = $driver.find_element(:id, "email_create")
        @emailaddress.send_keys(@randomnumber,email)

    end

    def createaccount
        @createaccount = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Email address'])[1]/following::span[1]")
        @createaccount.click
        sleep(2)
    end

    def personalnformationvalidation
        @sucesso = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Create an account'])[1]/following::h3[1]")
        (@sucesso.text).should == "YOUR PERSONAL INFORMATION"
    end




    end