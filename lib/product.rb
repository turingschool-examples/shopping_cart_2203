class Product
  attr_reader :category, :name, :unit_price, :quantity

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity
  end

  def total_price
    @quantity * @unit_price
  end

  def hoard(hoard_status)
    if @quantity <= 1
      hoard_status = true
    end
  end

  def is_hoarded?
    return @hoard_status
  end

end
