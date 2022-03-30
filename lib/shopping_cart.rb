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
end
