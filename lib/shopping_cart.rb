
class ShoppingCart
  attr_reader :name, :capacity, :products
  def initialize(attributes = {name: @name, capacity: @capacity})
    @attributes = attributes
    @name = name
    @capacity = capacity
    @products = []
  end

  def add_product(new_product)
    @products << new_product
  end

  def details
    return @attributes
  end

  # def total_number_of_products
  #   total = []
  #   @products.quantity.each do |number|
  #     total << number += number
  #   end
  #   return total
  # end
end
