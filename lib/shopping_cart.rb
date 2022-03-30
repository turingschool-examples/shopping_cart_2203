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
    details_of_cart = { name: @name, capacity: @capacity }
  end

  def total_number_of_products
    quantities = @products.map { |product| product.quantity }
    quantities.sum
  end

  def is_full?
    total_number_of_products >= @capacity
  end

  def products_by_category(category)
    @products.select { |product| product.category == category }
  end

  def percentage_occupied
    ((total_number_of_products.to_f / @capacity) * 100).round(2)
  end

  def sorted_products_by_quantity
    sorted = @products.sort_by { |product| product.quantity }
    sorted.reverse
  end

  def product_breakdown
    breakdown = {}
    @products.each do |product|
      if breakdown[product.category].nil?
        breakdown[product.category] = [product]
      else
        breakdown[product.category] << product
      end
    end
    breakdown
  end
end
