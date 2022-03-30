require './lib/product'

class ShoppingCart

attr_reader :name, :capacity, :products, :total_products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    cart_details = {name: @name, capacity: @capacity}
  end

  def total_number_of_products
    total_products = 0
    @products.each do |product|
      total_products += product.quantity
    end
    return total_products
  end

  def is_full?
    if total_number_of_products < @capacity
      false
    else
      true
    end
  end

  def products_by_category(category_of_p)
    product_category = []
    @products.each do |product|
      if product.category == category_of_p
        product_category << product
      end
    end
    return product_category
  end

  def percentage_occupied
    ((total_number_of_products.to_f / @capacity.to_f) * 100).round(2)
  end

  def sorted_products_by_quantity
    sorted_products = []
    product_sorter = @products.sort_by{ |unit| unit.quantity}
    product_sorter.each do |product|
      sorted_products.unshift(product)
    end
    return sorted_products
  end


  def product_breakdown
    product_break = Hash.new()
    sorted_products = sorted_products_by_quantity
    sorted_products.each do |product|
      product_break[product.category] = []
    end
    sorted_products.each do |product|
      product_break[product.category] << product
    end
    return product_break
  end
end
