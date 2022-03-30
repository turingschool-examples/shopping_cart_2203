require 'rspec'
require './lib/product'
require './lib/shopping_cart'

describe ShoppingCart do
  it 'exists' do
    cart = ShoppingCart.new('King Soopers', '30items')
    expect(cart).to be_a(ShoppingCart)
  end
end
