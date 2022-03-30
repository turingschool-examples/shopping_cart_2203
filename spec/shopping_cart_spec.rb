require 'rspec'
require './lib/product'
require './lib/shopping_cart'


describe ShoppingCart do
  context 'iteration 2' do
    it 'Shopping cart exists' do
      cart1 = ShoppingCart.new("King Soopers", "30items")

      expect(cart1).to be_an_instance_of ShoppingCart
    end

    it 'has readable attributes' do
      cart1 = ShoppingCart.new("King Soopers", "30items")

      expect(cart1.name).to eq "King Soopers"
      expect(cart1.capacity).to eq 30
      expect(cart1.products).to eq []
    end
  end
end
