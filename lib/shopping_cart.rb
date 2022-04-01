
class ShoppingCart
  attr_reader :name, :capacity, :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(new_product)
    @products << new_product
  end

  def details
    return {name: @name, capacity: @capacity}
  end

  def total_number_of_products
    total = 0
    @products.each do |product|
      total += product.quantity
    end
    return total
  end

  def is_full?
    if total_number_of_products >= 30
      true
    else
      false
    end
  end

  def products_by_category(category)
    all_from_category =
      @products.find_all do |product|
        product.category == category
      end
      return all_from_category
  end
end
