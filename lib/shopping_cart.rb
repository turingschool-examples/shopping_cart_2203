class ShoppingCart

  attr_reader :name, :capacity, :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def add_product(cart)
    @products << cart
  end

  def total_number_of_products
    @quantity.to_f
  end

  def is_full?

  end
end
