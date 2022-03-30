class Product
attr_reader :category, :name, :unit_price, :quantity

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i
    @hoard = false
  end

  def total_price
    @unit_price * @quantity
  end

  def hoard
    @quantity = 30
  end

  def is_hoarded?
    @quantity > 20
  end



end
