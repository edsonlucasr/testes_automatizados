

 E("preencho o titulo {string}") do |title|
   @TitleGender = CreateAccount.new
   @TitleGender.title(title)

 end




 E("Preencho o campo name com o valor {string}") do |name|
   @name = CreateAccount.new
   @name.FirstName(name)

 end



 E("Preencho o campo last name com o valor {string}") do |lname|
   @lastname = CreateAccount.new
   @lastname.LastName(lname)

 end



 E("Preencho o campo Password com o valor {string}") do |passwd|
   @passwd = CreateAccount.new
   @passwd.password(passwd)

 end



 E("preencho o campo Address First Name com o valor {string}") do |afname|
   @afname = CreateAccount.new
   @afname.AddressFirstName(afname)

 end

 E("preencho o campo Address Last Name com o valor {string}") do |alname|
   @alname = CreateAccount.new
   @alname.AddressLastName(alname)

 end


 E("preencho o campo Address com o valor {string}") do |address|
   @address = CreateAccount.new
   @address.Address(address)

 end


 E("preencho o campo City com o valor {string}") do |city|
   @City = CreateAccount.new
   @City.City(city)

 end


 E("seleciono no campo State o valor {string}") do |state|
   @state = CreateAccount.new
   @state.State(state)

 end

 E("preencho o campo ZipCode com o valor {string}") do |zipcode|
   @ZipCode = CreateAccount.new
   @ZipCode.ZipCode(zipcode)

 end

 E("preencho o campo Mobile phone o valor {string}") do |mphone|
   @Mphone = CreateAccount.new
   @Mphone.MobilePhone(mphone)

 end

 E("clico no botão Register") do
   @Mphone = CreateAccount.new
   @Mphone.register

 end

 Quando("valido a mensagem: MY ACCOUNT") do
   @MyAccount = CreateAccount.new
   @MyAccount.myaccountvalid
 end





