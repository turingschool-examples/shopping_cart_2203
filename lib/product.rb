class Product
attr_reader :category, :name, :unit_price, :quantity, #:is_hoarded

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity
    # is_hoarded = false
  end

  def total_price
    price = @unit_price * @quantity.to_f
    p price
  end
end

# product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
# product2 = Product.new(:meat, 'chicken', 4.50, '2')
#
#
# product1.total_price
# # require 'pry' ; binding.pry
# product1.is_hoarded?
