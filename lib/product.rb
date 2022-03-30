
class Product
  attr_reader :category, :name, :unit_price, :quantity, :is_hoarded
  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i
    @is_hoarded = false
  end

  def total_price
    @unit_price * @quantity
  end

  def hoard
    if @is_hoarded == false
    @is_hoarded = true
    else @is_hoarded = false
   end
  end


end
