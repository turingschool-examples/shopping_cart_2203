require 'rspec'
require './lib/product'
require './lib/shopping_cart'

describe ShoppingCart do
  it 'exists' do
    cart = ShoppingCart.new('King Soopers', '30items')
    expect(cart).to be_a(ShoppingCart)
  end

  it 'has attributes' do
    cart = ShoppingCart.new('King Soopers', '30items')
    expect(cart.name).to eq('King Soopers')
    expect(cart.capacity).to eq(30)
    expect(cart.products).to eq([])
  end
  it 'can add products' do
    cart = ShoppingCart.new('King Soopers', '30items')
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)
    expect(cart.products).to eq([product1, product2])
  end
  it 'can give cart details' do
    cart = ShoppingCart.new('King Soopers', '30items')
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)
    expect(cart.details).to eq({ name: 'King Soopers', capacity: 30 })
  end

  it 'can assess total number of products in itself' do
    cart = ShoppingCart.new('King Soopers', '30items')
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    expect(cart.total_number_of_products).to eq(13)
  end
  it 'can tell if it is full or not' do
    cart = ShoppingCart.new('King Soopers', '30items')
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    expect(cart.is_full?).to eq(false)
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    cart.add_product(product4)
    expect(cart.is_full?).to eq(true)
  end
  it 'can produce products of a certain category' do
    cart = ShoppingCart.new('King Soopers', '30items')
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    cart.add_product(product4)
    expect(cart.products_by_category(:paper)).to eq([product1, product3])
  end
  it 'gives percentage of occupied' do
    cart = ShoppingCart.new('King Soopers', '30items')
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    expect(cart.percentage_occupied).to eq(43.33)
  end
  it 'can produce sorted array of products by quantity, highest to lowest' do
    cart = ShoppingCart.new('King Soopers', '30items')
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    cart.add_product(product4)
    expect(cart.sorted_products_by_quantity).to eq([product4, product1, product2, product3])
  end
  it 'can produce a product breakdown' do
    cart = ShoppingCart.new('King Soopers', '30items')
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    cart.add_product(product4)
    expect(cart.product_breakdown).to eq({ meat: [product2], paper: [product1, product3], produce: [product4] })
  end
end
