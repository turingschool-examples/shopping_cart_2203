require 'rspec'
require './lib/product'
require './lib/shopping_cart'
require 'pry'

RSpec.describe ShoppingCart do
  context 'Iteration 2' do
    it 'exists' do
      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart).to be_an_instance_of(ShoppingCart)
    end

    it 'has a name' do
      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart.name).to eq("King Soopers")
    end

    it 'has capacity' do
      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart.capacity).to eq("30items")
    end

    it 'has products' do
      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart.products).to eq([])
    end

    it 'can add products' do
      cart = ShoppingCart.new("King Soopers", "30items")
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')

      cart.add_product(product1)
      cart.add_product(product2)

      expect(cart.products).to eq([product1, product2])
    end

    it 'can add products' do
      cart = ShoppingCart.new("King Soopers", "30items")
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')

      cart.add_product(product1)
      cart.add_product(product2)

      expect(cart.details).to eq({:name=>"King Soopers", :capacity=>"30items"})
    end

    it 'has a limit to how much will fit' do
      cart = ShoppingCart.new("King Soopers", "30items")
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')

      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)
# binding.pry
      expect(cart.total_number_of_products).to eq(13)
      expect(cart.is_full?).to eq(false)

      product4 = Product.new(:produce, 'apples', 0.99, '20')

      cart.add_product(product4)

      expect(cart.is_full?).to eq(true)
      expect(cart.products_by_category(:paper)).to eq("toilet paper", "tissue paper")
    end
  end
end
