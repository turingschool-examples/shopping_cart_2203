class Cart
  attr_reader :name, :capacity, :product

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @product = []

  end

end
