class Shopping_cart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
   @name = name
   @capacity = capacity
   @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
   shopping_cart = {}
   shopping_cart[:name] = @name
   shopping_cart[:capacity] = 30
   return shopping_cart
  end
end
