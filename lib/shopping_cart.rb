
class ShoppingCart
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
    cart_details = {
      name: @name,
      capacity: @capacity.chomp("items").to_i,
    }
  end
end
