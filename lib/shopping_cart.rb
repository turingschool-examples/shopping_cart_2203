require './lib/product'

class ShoppingCart

  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
    @total_products = 0
  end

  def add_product(product)
    @products << product
    @total_products += product.quantity
  end

  def details
    details_hash = {
      name: @name,
      capacity: @capacity
    }
    return details_hash
  end

  def total_number_of_products
    return @total_products
  end

  def is_full?
    full = false
    if @total_products > @capacity
      full = true
    end
    return full
  end

  def products_by_category(category)
    products_in_category = []
    @products.each do |product|
      if product.category == category
        products_in_category << product
      end
    end
    return products_in_category
  end

  def percentage_occupied
    total_products = total_number_of_products.to_f
    percent = ((total_products / @capacity) * 100).round(2)
    return percent
  end

  def sorted_products_by_quantity
    sorted = @products.sort {|a, b| a.quantity <=> b.quantity}
    return sorted
  end

  def product_breakdown
    breakdown = {meat: [], paper: [], produce: []}
    breakdown.keys.each do |key|
      breakdown[key] = products_by_category(key)
    end
    puts breakdown
    return breakdown
  end

end
