class Product
  attr_reader :category, :name, :unit_price, :quantity

  def initialize(category, name, unit_price, quantity)
    @category = :paper
    @name = name
    @unit_price = unit_price
    @quantity = quantity
    # @sum_of_product = (unit_price * quantity)
  end

  # def total_price(producs)
  #   products.@sum_of_product.get_sum
  # end

  def is_hoarded?
    @hoard == false
  end
end
