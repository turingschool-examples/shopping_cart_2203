require './lib/product'


class ShoppingCart
  attr_reader :name, :capacity, :products, :details, :total_number_of_products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
    @details = {
      name: @name,
      capacity: @capacity
    }
    @total_number_of_products = 0
  end

  def add_product(product)
    @products << product
  end

  def total_number_of_products
    @products.each do |item| #{ |product| total_number_of_products+=product.quantity.to_i }
# require 'pry'; binding.pry
      item.quantity.to_i
      # @total_number_of_products += item
    end
  end
  #
  # def is_full?
  #   if cart.total_number_of_products < @capacity
  #     false
  #   else
  #     true
  #   end


end
