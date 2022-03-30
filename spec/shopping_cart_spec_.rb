require './lib/product'
require './lib/shopping_cart'
require 'pry'

RSpec.describe ShoppingCart do
  it "exist" do
    cart = ShoppingCart.new("King Soopers", "30items")

  expect(cart).to be_an_instance_of(ShoppingCart)
  end

  it "has readable attributes" do
    cart = ShoppingCart.new("King Soopers", "30items")

  expect(cart.name).to eq('King Soopers')
  expect(cart.capacity).to eq(30)
  expect(cart.products).to eq([])
  end

  #Iteration 2

  it "can add products" do
    cart = ShoppingCart.new("King Soopers", "30items")

    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')

    cart.add_product(product1)
    cart.add_product(product2)
    # binding.pry
    expect(cart.products).to eq([product1, product2])
    expect(cart.details).to eq(["King Soopers", 30])
  end


  #Iteration 3
  it "produce total number of products " do
    cart = ShoppingCart.new("King Soopers", "30items")

    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')

    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)

    expect(cart.total_number_of_products).to eq(13)
    expect(cart.is_full?).to eq(true)
  end


end
