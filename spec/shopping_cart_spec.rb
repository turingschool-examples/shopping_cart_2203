require 'rspec'
require './lib/product'
require './lib/shopping_cart'
require 'pry'

RSpec.describe ShoppingCart do
  it 'exists' do
    cart = ShoppingCart.new("King Soopers", "30items")

    expect(cart).to be_an_instance_of ShoppingCart
  end

  it 'ShoppingCart has a name' do
    cart = ShoppingCart.new("King Soopers", "30items")

    expect(cart.name).to eq "King Soopers"
  end

  it 'ShoppingCart has a capacity' do
    cart = ShoppingCart.new("King Soopers", "30items")

    expect(cart.capacity).to eq 30
  end

  it 'ShoppingCart has no products be default' do
    cart = ShoppingCart.new("King Soopers", "30items")

    expect(cart.products).to eq []
  end

  it 'ShoppingCart can add products' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)

    expect(cart.products).to eq [product1, product2]
  end

  # xit 'ShoppingCart can read details' do
  #   cart = ShoppingCart.new("King Soopers", "30items")
  #
  #   expect(cart.details).to eq {name: "King Soopers", capacity: 30}
  # end

  it 'ShoppingCart can calculate total number of products' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)

    expect(cart.total_number_of_products).to eq 13
  end

  it 'ShoppingCart can calculate if capacity is full' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)

    expect(cart.is_full?).to eq false
    cart.add_product(product4)
    expect(cart.is_full?).to eq true
  end

  it 'ShoppingCart can list products by category' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    cart.add_product(product4)

    expect(products_by_category(:paper)).to eq [product1, product3]
  end
end
