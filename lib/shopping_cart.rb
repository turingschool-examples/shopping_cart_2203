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
    {name: @name, capacity: @capacity}
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

  def percentage_occupied
    total_products = 0
    @products.each do |product|
      total_products += product.quantity
    end
    ((total_products.to_f / @capacity.to_f) * 100).round(2)
  end

  def sorted_products_by_quantity
    @products.sort_by { |product| product.quantity }.reverse
  end

  def product_breakdown
    product_hash = {}
    @products.each do |product|
      product_hash[product.category] = []
    end
    product_hash.keys.sort.each do |key|
      product_cat = []
      @products.each do |product|
        if product.category == key
          product_cat << product
        end
      end
      product_hash[key] = product_cat
    end
    product_hash
  end
end
