require 'rspec'
require './lib/product'
require './lib/shopping_cart'

RSpec.describe ShoppingCart do
context 'Iteration 2' do
    it 'exists' do
      cart = ShoppingCart.new('King Soopers', 30)

      expect(cart).to be_an_instance_of(ShoppingCart)
    end

    it 'ShoppingCart has a name' do
      cart = ShoppingCart.new('King Soopers', 30)

      expect(cart.name).to eq('King Soopers')
    end

    it 'ShoppingCart has a capacity' do
      cart = ShoppingCart.new('King Soopers', 30)

      expect(cart.capacity).to eq(30)
    end

    it 'ShoppingCart has products' do
      cart = ShoppingCart.new('King Soopers', 30)

      expect(cart.products).to eq([])
    end

    xit 'can have grocery products added to it' do
      cart = ShoppingCart.new('King Soopers', 30)

      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')

      product2 = Product.new(:meat, 'chicken', 4.50, '2')

      cart.add_product(product1)

      cart.add_product(product2)

      expect(cart.add_product).to eq([product1, product2])
    end

    xit 'can total number of products and their details' do
      cart1 = ShoppingCart.new(:paper, 'toilet paper', 3.70, 10)
      cart2 = ShoppingCart.new(:meat, 'chicken', 4.50, 2)

      cart = ShoppingCart.new('King Soopers', 30)

      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')

      product2 = Product.new(:meat, 'chicken', 4.50, '2')

      cart.add_product(product1)

      cart.add_product(product2)

      cart.products

      cart.details
      expect(card.total_number_of_products).to eq()
      expect(cart.details)to eq({name: 'King Soopers', capacity: 30, products:})
    end
  end
end
