require './lib/product'
require './lib/shopping_cart'

RSpec.describe ShoppingCart do

  it "exists" do
    cart = ShoppingCart.new("King Soopers", "30items")
    expect(cart.name).to eq("King Soopers")
    expect(cart.capacity).to eq(30)
    expect(cart.products).to eq([])
  end

  it "tests add_product method" do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)
    expect(cart.products).to eq([product1,product2])
  end

  it "tests details method" do
    cart = ShoppingCart.new("King Soopers", "30items")
    expect(cart.details).to eq({name: "King Soopers", capacity: 30})
  end

  it "tests total_number_of_products" do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    expect(cart.total_number_of_products).to eq(13)
  end

  it "checks is_full method" do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    expect(cart.is_full?).to eq(false)
    cart.add_product(product4)
    expect(cart.is_full?).to eq(true)
  end

end
