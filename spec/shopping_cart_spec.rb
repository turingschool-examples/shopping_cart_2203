require './lib/product'
require './lib/shopping_cart'


describe ShoppingCart do
  it 'creates a new cart and takes 2 arguments' do
    cart = ShoppingCart.new("King Soopers", "30items")

    expect(cart).to be_an_instance_of ShoppingCart
  end

  it 'can report the name of the cart' do
    cart = ShoppingCart.new("King Soopers", "30items")

    expect(cart.name).to eq "King Soopers"
  end

  it '#capacity can take in a string and convert it to an integer' do
  cart = ShoppingCart.new("King Soopers", "30items")

  expect(cart.capacity).to eq 30
  end

  it '#products can return the array @products' do
    cart = ShoppingCart.new("King Soopers", "30items")

    expect(cart.products).to eq []
  end

  it '#add_product to cart' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper',3.70, '10')
    product2 = Product.new(:meat, 'chicken',4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)

    expect(cart.products).to eq [product1, product2]
  end

  xit '#details returns a hash of cart details' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper',3.70, '10')
    product2 = Product.new(:meat, 'chicken',4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)

    #unsure how to format this test/what the interaction pattern is looking for
    expect(cart.details).to eq(@details)
  end

  it '#total_number_of_products returns the number of products in cart' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper',3.70, '10')
    product2 = Product.new(:meat, 'chicken',4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)

    expect(cart.total_number_of_products).to eq 13
  end

  it '#is_full? returns boolean to check if cart is at capacity' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper',3.70, '10')
    product2 = Product.new(:meat, 'chicken',4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)

    expect(cart.is_full?).to eq false
  end

  it '#is_full returns true when at or over capacity' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper',3.70, '10')
    product2 = Product.new(:meat, 'chicken',4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    product4 = Product.new(:produce, 'apples', 0.99,'20')
    cart.add_product(product4)

    expect(cart.is_full?).to eq true
  end

  it '#products_by_category shows you all products of 1 category' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper',3.70, '10')
    product2 = Product.new(:meat, 'chicken',4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    product4 = Product.new(:produce, 'apples', 0.99,'20')
    cart.add_product(product4)

    expect(cart.products_by_category(:paper)).to eq [product1, product3]
    expect(cart.products_by_category(:meat)).to eq [product2]
    expect(cart.products_by_category(:produce)).to eq [product4]
  end

  it '#percentage_occupied returns how much of your cart is full as a float' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper',3.70, '10')
    product2 = Product.new(:meat, 'chicken',4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)

    expect(cart.percentage_occupied).to eq 43.33
  end

  it '#sorted_products_by_quantity sorts products by quantity in cart' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper',3.70, '10')
    product2 = Product.new(:meat, 'chicken',4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    product4 = Product.new(:produce, 'apples', 0.99,'20')
    cart.add_product(product4)

    expect(cart.sorted_products_by_quantity).to eq[product3, product2, product1, product4]
  end
end
