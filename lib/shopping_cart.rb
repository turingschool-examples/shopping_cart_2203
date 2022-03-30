class ShoppingCart
  attr_reader :name, :capacity, :products, :add_product, :details, :total_number_of_products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
    @details = {}
  end

  def add_product(product)
    @products << product
  end

  def details
    p @name, @capacity
  end

  def total_number_of_products
    number_of_products = []
    @products.each do |product|
      number_of_products << product.quantity.to_i
    end
    number_of_products.sum
  end

  def is_full?
    if @capacity <= @products.count
      false
    elsif
      true
    end
  end
end
