class Product
  attr_reader :category, :name, :unit_price, :quantity
  def initialize(category, name, unit_price, quantity) #, total_price)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_f
    #is_hoarded = []
  end

  def total_price
    @quantity * @unit_price
  end

  def hoard
    @quantity += 20
  end

  def is_hoarded?
    if @quantity < 11
      false
    else
      true
    end

  end


end
