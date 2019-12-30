




 E("preencho o valor {string} no campo Email address") do |email|
   @Authentication = Auth.new
   @Authentication.emailaddress(email)

 end



 E("clico no botao Create an account") do
   @AuthCreateAccount = Auth.new
   @AuthCreateAccount.createaccount

 end


 Quando("valido a mensagem: YOUR PERSONAL INFORMATION") do
   @CreateAccount = Auth.new
   @CreateAccount.personalnformationvalidation
 end
