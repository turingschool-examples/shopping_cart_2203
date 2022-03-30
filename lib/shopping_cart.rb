require './lib/product'

class ShoppingCart
  attr_reader :name, :capacity, :products, :details
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    @details = details
    details = {
      :name => "King Soopers",
      :capacity => 30
    }
    p details
    # @details.each { |:name, :capacity|}
  end
# binding.pry
  def total_number_of_products
    cart.each do |products|
      @quantity.add
      p total_number_of_products

    end
  end

  def is_full?
    total_number_of_products <= 15
  end

  def products_by_category(category)
    @category = category
    if @products == :paper
      return product

    end
  end
end
