class Product
  attr_reader :category, :name
  def initialize(category, name, price, quantity)
    @category = category
    @name = name
  end
end
