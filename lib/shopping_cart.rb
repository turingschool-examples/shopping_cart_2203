
class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    cart_details = {
      name: @name,
      capacity: @capacity.chomp("items").to_i,
    }
  end

  def total_number_of_products
    quantities = []
    @products.each do |product|
    quantities << product.quantity
    end
    total = quantities.reduce(0) do |sum, number|
      sum + number
    end
  end
  #
  # def is_full?
  #   if total > @capacity
  # end
  #
end
