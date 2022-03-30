require "pry"

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
    cart_details = {
      name: @name,
      capacity: @capacity
    }
  end

  def total_number_of_products
    total_products = 0
    @products.each do |product|
      total_products += product.quantity
    end
    total_products
  end

  def is_full?
    total_products = 0
    @products.each do |product|
      total_products += product.quantity
    end
    total_products > @capacity
  end

  def products_by_category(type)
    product_by_cat = []
    @products.each do |product|
      if product.category == type
        product_by_cat << product
      end
    end
    product_by_cat
  end
end
