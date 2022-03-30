class Product
  attr_reader :category, :name, :unit_price, :quantity, :total_price
  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity
  end
  def quantity
    product.quantity
  end

  def total_price
    @product.quantity.to_f % @product.unit_price
  end
end
  # @total_price
