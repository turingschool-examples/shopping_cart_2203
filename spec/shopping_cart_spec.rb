require './lib/product'
require './lib/shopping_cart'

RSpec.describe ShoppingCart do
  it 'exists' do
cart = ShoppingCart.new("King Soopers", "30items")
    expect(cart).to be_an_instance_of(ShoppingCart)
  end

  describe '#add_product' do
    it "adds products" do
      cart = ShoppingCart.new("King Soopers", "30items")
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')
      expect(cart.products).to eq([])
      cart.add_product(product1)
      cart.add_product(product2)
      expect(cart.products).to eq([product1, product2])
    end
  end

  describe '#details' do
    it "returns details of cart" do
      cart = ShoppingCart.new("King Soopers", "30items")
      expect(cart.details).to eq({name: "King Soopers", capacity: 30})
    end
  end

  describe '#total_number_of_products' do
    it "returns total number of products" do
      cart = ShoppingCart.new("King Soopers", "30items")
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)
      expect(cart.total_number_of_products).to eq(13)
    end
  end

  describe '#is_full?' do
    it "determines if shopping cart is full" do
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
  end

  describe '#products_by_category' do
    it "returns products by category" do
      cart = ShoppingCart.new("King Soopers", "30items")
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')
      product3 = Product.new(:paper, 'tissue paper', 1.25,'1')
      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)  
      expect(cart.products_by_category(:paper)).to eq([product1, product3])
    end
  end
end
