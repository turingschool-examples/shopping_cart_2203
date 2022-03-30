class Product
  attr_reader :category, :name, :unit_price, :quantity, :total_price
  def initialize(category, name, unit_price, quantity) #, total_price)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity
    #is_hoarded = []
  end

  def total_price
    total = @quantity.to_f * @unit_price
  end




end
