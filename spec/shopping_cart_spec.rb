require './lib/product'
require './lib/shopping_cart'
require 'pry'

describe ShoppingCart do
  let(:shopping_cart){ShoppingCart.new("King Soopers", "30items")}
  let(:product1){Product.new(:paper, 'toilet paper', 3.70, '10')}
  let(:product2){Product.new(:meat, 'chicken', 4.50, '2')}
  let(:product3){Product.new(:paper, 'tissue paper', 1.25, '1')}
  let(:product4){Product.new(:produce, 'apples', 0.99, '20')}

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
  end

  it 'is full?' do
    shopping_cart.add_product(product1)
    shopping_cart.add_product(product2)
    shopping_cart.add_product(product3)
    expect(shopping_cart.is_full?).to eq(false)
    shopping_cart.add_product(product4)
    expect(shopping_cart.is_full?).to eq(true)
  end

  it 'can return an array of products by category' do
    shopping_cart.add_product(product1)
    shopping_cart.add_product(product2)
    shopping_cart.add_product(product3)
    shopping_cart.add_product(product4)
    expect(shopping_cart.products_by_category(:paper)).to eq([product1, product3])
  end
end
