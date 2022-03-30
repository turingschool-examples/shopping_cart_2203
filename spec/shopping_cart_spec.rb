require 'rspec'
require './lib/product'
require './lib/shopping_cart'


describe ShoppingCart do
  context 'iteration 2' do
    it 'Shopping cart exists' do
      shopping_cart1 = ShoppingCart.new("King Soopers", "30items")

      expect(shopping_cart1).to be_an_instance_of ShoppingCart
    end
  end
end
