require './lib/product'
require './lib/shopping_cart'
require 'rspec'

describe ShoppingCart do
  context 'Iteration 1' do
    it 'ShoppingCart exists' do
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

    it 'ShoppingCart has products' do
      cart = ShoppingCart.new("King Soopers", "30items")
      expect(cart.products).to eq []
    end

    it 'ShoppingCart adds products to cart' do
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')
      cart = ShoppingCart.new("King Soopers", "30items")
      cart.add_product(product1)
      cart.add_product(product2)
      expect(cart.products.length).to eq 2
    end

    it 'ShoppingCart shows details' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)
    expect(cart.details).to eq({name: "King Soopers", capacity: 30})
  end

    it 'ShoppingCart can find total number of products' do
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')
      cart = ShoppingCart.new("King Soopers", "30items")
      cart.add_product(product1)
      cart.add_product(product2)
      expect(cart.total_number_of_products).to eq 12
    end

      it 'ShoppingCart checks if full' do
    cart = ShoppingCart.new("King Soopers", "30items")
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

    it 'ShoppingCart returns all products in that category' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    cart.add_product(product4)
    expect(cart.products_by_category(:paper)).to eq([product1, product3])
  end

  it 'ShoppingCart returns percentage of capacity occupied' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    expect(cart.percentage_occupied).to eq(43.33)
  end

  it 'ShoppingCart sorts products by quantity' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    cart.add_product(product4)
    expect(cart.sorted_products_by_quantity).to eq([product4, product1, product2, product3])
  end

  it 'ShoppingCart gives me a breakdown of products' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    cart.add_product(product4)
    expect(cart.product_breakdown). to eq({meat: [product2], paper: [product1, product3], produce: [product4]})
  end


  end
end
