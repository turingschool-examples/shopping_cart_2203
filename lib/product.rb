class Product
  attr_reader :category, :name, :unit_price, :quantity
  def initialize(category, name, unit_price, quantity)
  @category = category
  @name = name
  @unit_price = unit_price
  @quantity = quantity
  end

  def total_price
    total_price = unit_price * quantity.to_i
  end

  def is_hoarded?
    quantity.to_i >= 10
  end

  def hoard
    if quantity.to_i < 10
      quantity.replace '10'
    end
  end
end
