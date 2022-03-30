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

  def is_full?
    if total_number_of_products >= @capacity
      true
    else
      false
    end
  end

  def products_by_category(cat)
    sort_out = []
    products.each do |item|
      if item.category == cat
        sort_out << item
      end
    end
    return sort_out
  end

  def percentage_occupied
    div = total_number_of_products.to_f / @capacity
    (div * 100).round(2)
  end

  # def sorted_products_by_quantity
  #   @products.sort { |product| product.quantity }
  # end
end
