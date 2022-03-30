require './lib/product'
class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []

  end

  def add_product(added_product)
    @products << added_product
  end

  def details
    cart_hash = {name: @name, capacity: @capacity}
  end

  def total_number_of_products
    sum_products = 0
    @products.each do |product|
      sum_products += product.quantity
    end
    return sum_products

  end

  def is_full?
    total_number_of_products() >= @capacity
  end

  def products_by_category(category)
    category_products = []
    @products.each do |product|
      if product.category == category
        category_products << product
      end
    end
    return category_products
  end

  def percentage_occupied
    ((total_number_of_products.to_f / @capacity.to_f) * 100).round(2)
  end

  def sorted_products_by_quantity
    asc_sorted_products = @products.sort_by{ |product| product.quantity}
    desc_sorted_products = []
    asc_sorted_products.each do |prod|
      desc_sorted_products.unshift(prod)
    end
    return desc_sorted_products
  end

  def product_breakdown
    product_hash = Hash.new()
    sorted_products_by_quantity.each do |product|
      product_hash[product.category] = []
    end
    sorted_products_by_quantity.each do |product|
      product_hash[product.category] << product
    end
    return product_hash

  end



end
