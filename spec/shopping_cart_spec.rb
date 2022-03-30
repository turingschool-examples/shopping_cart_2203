require 'rspec'
require './lib/product'
require './lib/shopping_cart'
require 'pry'

describe ShoppingCart do
  it "exists" do
    cart = ShoppingCart.new("King Soopers", "30 items")
    expect(cart).to be_an_instance_of(ShoppingCart)
  end

  it "can read attributes" do
    cart = ShoppingCart.new("King Soopers", "30 items")
    expect(cart.name).to eq "King Soopers"
    expect(cart.capacity).to eq 30
    expect(cart.products).to eq([])
  end

  it "Can add items to the cart" do
    
  end



end
