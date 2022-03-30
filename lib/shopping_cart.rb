class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []

  end

  def add_product(product)
    products.push(product)
  end

  def details
    cart_hash = {name: @name, capacity: @capacity}
  end

  def total_number_of_products
    total = 0
    @products.each do |product|
      total += product.quantity
    end
    return total
  end

  def is_full?
    total_number_of_products > @capacity
  end

  def products_by_category(p_category)
    category_products = []
    # require 'pry'; binding.pry
    @products.each do |product|
      if product.category == p_category
        category_products.push(product)
      end
    end
    return category_products
  end

  def percentage_occupied
    # percentage = 0.00
    # require 'pry'; binding.pry
    ((total_number_of_products.to_f / @capacity.to_f) * 100).round(2)
  end

  def sorted_products_by_quantity
    # require 'pry'; binding.pry
    ascending_sorted_products = @products.sort_by{ |obj| obj.quantity}
    descending_sorted_products = []
    ascending_sorted_products.each do |product|
      descending_sorted_products.unshift(product)
    end
    return descending_sorted_products

    # require 'pry'; binding.pry
  end

  def product_breakdown
    product_hash = Hash.new()
    sorted_products = sorted_products_by_quantity
    sorted_products.each do |product|
      product_hash[product.category] = []
    end
    sorted_products.each do |product|
      product_hash[product.category] << product
    end
      require 'pry'; binding.pry
    return product_hash

  end




end
