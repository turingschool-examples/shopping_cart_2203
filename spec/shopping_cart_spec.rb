require './lib/product'
require './lib/shopping_cart'
require 'pry'

describe ShoppingCart do
  let(:shopping_cart){ShoppingCart.new("King Soopers", "30items")}
  let(:product1){Product.new(:paper, 'toilet paper', 3.70, '10')}
  let(:product2){Product.new(:meat, 'chicken', 4.50, '2')}

  it "exists" do
    expect(shopping_cart).to be_an_instance_of(ShoppingCart)
  end

  it "it has a readable name, capacity, and products array" do
    expect(shopping_cart.name).to eq("King Soopers")
    expect(shopping_cart.capacity).to eq(30)
    expect(shopping_cart.products).to eq([])
  end

  it "can add products to cart" do
    expect(shopping_cart.products).to eq([])
    shopping_cart.add_product(product1)
    shopping_cart.add_product(product2)
    expect(shopping_cart.products).to eq([product1, product2])
  end

  it 'can read cart details' do
    expect(shopping_cart.details).to eq([shopping_cart.name, shopping_cart.capacity])
    # binding.pry
  end
end
