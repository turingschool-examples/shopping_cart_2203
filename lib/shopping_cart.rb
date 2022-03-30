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

  def total_number_of_products
    total_products = 0
    @products.each do |products|
      total += product.quantity
    end
    return total_products
  end

  def details
    shopping_cart_harsh = {name: @name, capacity: @capacity, product: @products}
  end
end
