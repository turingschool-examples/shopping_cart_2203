class Product
  attr_reader :name, :unit_price, :category, :quantity
  attr_accessor :product1, :product2
  def initialize(name, unit_price, category, quantity)
    @name = name
    @unit_price = []
    @category = category
    @quantity = []
    @product1 = product1
    @product2 = product2
  end
  def name
    @name = 'toilet paper'
  end
  def category
    @category = :paper
  end
  def unit_price
    @unit_price = 3.70
  end
  def quantity
    @quantity = 10
  end
  def total_price1
    @product1 = (@unit_price * 10)
  end
  def total_price2
  @product2 = (4.50 * 2)
  end
end
