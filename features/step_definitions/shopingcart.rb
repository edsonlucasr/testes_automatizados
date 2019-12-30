


Dado ("clico no botao Quick View") do
  @addtocart = ShopCart.new
  @addtocart.quickview

end

Dado ("clico no botao Add to cart") do
  @addtocart = ShopCart.new
  @addtocart.addToCart

end

Dado ("clico no botao Proceed to checkout") do
  @proccheck = ShopCart.new
  @proccheck.procCheckout
end

Dado ("valido a tela Shopping-Cart Summary") do
  @cartsummary = ShopCart.new
  @cartsummary.shopCartSummaryAssert
end

Dado ("clico no botao Proceed to checkout na pagina Shopping-Cart Summary") do
  @proccartsummary = ShopCart.new
  @proccartsummary.procCheckoutPage
end

Dado ("clico no botao Proceed to checkout na pagina Addresses") do
  @procadresses = ShopCart.new
  @procadresses.procCheckoutAddressPage
end

Dado ("valido a tela Shipping") do
  @shipping = ShopCart.new
  @shipping.shippingAssert

end

Dado ("clico no checkbox Terms of service") do
  @terms = ShopCart.new
  @terms.termsofservice
end

Dado ("clico no botao Proceed to checkout na pagina Shipping") do
  @procship = ShopCart.new
  @procship.procCheckoutShippingPage
end

Dado ("clico na opcao {string} em metodos de pagamento") do |paymenttype|
  @payment = ShopCart.new
  @payment.payment(paymenttype)
end

Dado ("valido a mensagem {string} em Order Summary") do |paymenttype|
  @paymentorder = ShopCart.new
  @paymentorder.ordersummary(paymenttype)
end

Dado ("clico no botao Confirm Order") do
  @confirmorder = ShopCart.new
  @confirmorder.confirmorder
end

Dado ("valido a mensagem Your order on My Store is complete com pagamento {string}") do |paymentcomplete|
  @confirmorder = ShopCart.new
  @confirmorder.ordercomplete(paymentcomplete)
end






