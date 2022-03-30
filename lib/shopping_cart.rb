require './lib/product'

class ShoppingCart

  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    details_hash = {
      name: @name,
      capacity: @capacity
    }
    return details_hash
  end

  def total_number_of_products
    total = 0
    @products.each do |product|
      total += product.quantity
    end
    return total
  end

end
