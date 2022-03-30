class ShoppingCart
  attr_reader :name, :capacity, :products
  def initialize(name, products)
    @name = name
    @capacity = capacity
    @products = []
  end
end
