class Product
  attr_reader :category
  def initialize(category, name, price, quantity)
    @category = category
  end
end
