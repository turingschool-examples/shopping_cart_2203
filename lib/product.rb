class Product
  attr_reader :category, :name, :unit_price, :quantity
  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i
    @being_hoarded = false
  end

  def total_price
    (@quantity.to_f) * @unit_price
  end

  def is_hoarded?
    @being_hoarded
  end
  
end
