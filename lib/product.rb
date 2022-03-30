class Product

attr_reader :category, :name, :unit_price, :quantity
  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i
  end

  def total_price
    @quantity.to_f * unit_price
  end

  def is_hoarded?
    if @quantity <= 10
      false
    else
      true
    end
  end

  def hoard
    @quantity += 1
  end
end
