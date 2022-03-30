require 'pry'

class ShoppingCart
  attr_reader :name, :capacity, :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product_object)
    @products << product_object
  end

  def details
    return name, capacity
  end

  def is_full?
    @qnumber = 0
    products.each do |prod|
      @qnumber += prod.quantity
    end
    if @qnumber > capacity
        return true
    else
        return false
    end
  end

  def products_by_category(cat)
    prods_by_cat = []
    products.each do |prod|
      if prod.category == (cat)
        prods_by_cat << prod
      end
    end
    return prods_by_cat

  end


end
