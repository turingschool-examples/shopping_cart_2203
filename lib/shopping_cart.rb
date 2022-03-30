require 'rspec'
require './lib/product'
require './lib/shopping_cart'

describe ShoppingCart do
    it 'ShoppingCart exists and has attributes' do

      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart).to be_an_instance_of ShoppingCart
      expect(cart.name).to eq("King Soopers")
      expect(cart.capacity).to eq("30items")
    end
    #
    # it 'Product has a name' do
    #   product = Product.new(:paper, 'toilet paper', 3.70, '10')
    #
    #   expect(product.name).to eq 'toilet paper'
end
