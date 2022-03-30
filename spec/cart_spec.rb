require 'rspec'
require './lib/product'
require './lib/cart'
require 'pry'

describe Cart do
  context 'Iteration 2' do
    it 'Product exists' do
      cart = Cart.new("King Soopers", "30items")

      expect(cart).to be_an_instance_of(Cart)
    end
  end

  it 'Add product' do
    cart = Cart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')

    cart.add_product(product1)
    cart.add_product(product2)

    expect(cart.products).to eq([product1, product2])
  end
end
