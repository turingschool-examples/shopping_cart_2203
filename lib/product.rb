class Product

  attr_reader :category, :name, :quantity, :unit_price

  def initialize(category,name,unit_price,quantity)
  @category = category
  @name = name
  @unit_price = unit_price
  @quantity = quantity
  end

  def total_price
    total_price = unit_price * quantity.to_f
  end

  def is_hoarded?
    false
    # hoard = 1
    # if hoard == .even
    #   true
    # end
  end

end
