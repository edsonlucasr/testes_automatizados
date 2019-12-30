


Dado("que abro o browser {string} e clico em Sign In") do |browser|
  @browser = Home.new
  @browser.openSite("http://automationpractice.com/index.php",browser)
  @browser.signin

end


Dado("clico no menu Women") do
  @womenmenu = Home.new
  @womenmenu.womenmenu
end

Dado("clico na opcao Dresses") do
  @dressesmenu = Home.new
  @dressesmenu.dressesmenu
end

Dado("clico na opcao Tops") do
  @topsmenu = Home.new
  @topsmenu.topsmenu
end

Dado("salvo a evidência do teste {string}") do |scenario|
  @print = Home.new
  @print.print(scenario)
end


