require 'rspec'
require './lib/product'
require './lib/shopping_cart'

describe Shopping_cart do
    it 'Shopping_cart exists and has attributes' do

      cart = Shopping_cart.new("King Soopers", "30items")

      expect(cart).to be_an_instance_of Shopping_cart
      expect(cart.name).to eq("King Soopers")
      expect(cart.capacity).to eq("30items")
    end
    #
    # it 'Product has a name' do
    #   product = Product.new(:paper, 'toilet paper', 3.70, '10')
    #
    #   expect(product.name).to eq 'toilet paper'
end
