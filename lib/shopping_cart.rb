class ShoppingCart
  attr_reader :name, :capacity, :products, :details

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
    @details = {}
  end

  def add_product(product)
    @products << product
  end

  def details
    @details[:name, :capacity]
  end
end
