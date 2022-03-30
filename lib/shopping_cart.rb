require './lib/product'

class ShoppingCart
  attr_reader :name, :capacity, :products, :details
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
    @details = {
      name: @name,
      capacity: @capacity
    }
  end

  def add_product(product)
    @products << product
  end

  def total_number_of_products
    total = 0
    @products.each do |item|
      total += item.quantity
    end
    return total
  end
end
