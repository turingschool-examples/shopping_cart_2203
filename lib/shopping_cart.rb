require './lib/product'

class ShoppingCart
  attr_reader :name,
              :capacity,
              :products,
              :details
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products.push(product)
  end

  # def details
  #   details = {
  #     name: @name,
  #     capacity: @capacity
  #   }
  # end

  def total_number_of_products
    @total = 0
    @products.each do |product|
      @total += product.quantity
    end
    return @total
  end

  def is_full?
    if total_number_of_products < capacity
      false
    else
      true
    end
  end

  def products_by_category(category)
    @products_in_category = []
    @products.each do |product|
      if product.category == category
        @products_in_category << product
      end
    end
    return @products_in_category
  end
end
