class ShoppingCart
  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = :capacity
    @products = []
  end
end
