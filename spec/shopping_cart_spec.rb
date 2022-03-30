require 'rspec'
require './lib/product'
require './lib/shopping_cart'

describe ShoppingCart do
  context 'Iteration ' do
    it 'ShoppingCart exists' do
      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart).to be_an_instance_of(ShoppingCart)
    end

    it 'ShoppingCart has a name' do
      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart.name).to eq("King Soopers")
    end

    it 'ShoppingCart has a capacity in itegers' do
      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart.capacity).to eq(30)
    end
  end
end
