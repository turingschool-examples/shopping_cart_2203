class ShoppingCart
  attr_reader :name, :capacity, :products, :total_number_of_products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
    @total_quantity = 0
  end

  def add_product(product)
    @products << product
    @total_quantity += product.quantity
  end

  def details
  detail_hash = {
    :name => @name,
    :capacity => @capacity
  }
  end

  def total_number_of_products
    @total_quantity
  end

  def is_full?
    @total_quantity > @capacity
  end
end
