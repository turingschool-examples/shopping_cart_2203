class ShoppingCart
  attr_reader :cart, :products, :details
  def initialize(cart, products, details)
    @cart = cart
    @products = []
    @details = details
  end
end
