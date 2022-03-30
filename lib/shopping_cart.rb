require 'pry'

class ShoppingCart
  attr_reader :name, :capacity, :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product_object)
    @products << product_object
  end

  def details
    return name, capacity
  end

end
