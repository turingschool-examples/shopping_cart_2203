class ShoppingCart
  @@total_products = 0
  attr_reader :name,
              :capacity,
              :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.delete("^0-9").to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    detail = {
      name: @name,
      capacity: @capacity
    }
  end

  def total_number_of_products
    @products.each do |product|
      @@total_products += product.quantity
    end
    @@total_products
  end

  def is_full?
    total_number_of_products >= @capacity
  end

  def products_by_category(category)
    @products.select { |product| product.category == category }
  end

  def percentage_occupied
    (total_number_of_products.to_f / @capacity.to_f)*100
  end

end
