require './lib/product'
require 'pry'

class ShoppingCart
  attr_reader :name, :capacity, :products, :total
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
    @total = 0
  end

  def add_product(product)
    @products << product
  end

  def details
    cart_details = {}
    cart_details[:name] = @name
    cart_details[:capacity] = @capacity
    cart_details
  end

  def total_number_of_products
    # total = 0
    @products.each do |product|
      @total += product.quantity
    end
    @total
  end

  def is_full?
    if @total > @capacity
      true
    else
      false
    end
  end
end
