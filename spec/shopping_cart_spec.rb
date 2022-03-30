require 'rspec'
require './lib/product'
require './lib/shopping_cart'

describe Shopping_cart do
  context 'Iteration 2' do
    it 'Shopping_cart exists' do
      shopping_cart = Shopping_cart.new("King Soopers", "30")

      expect(shopping_cart).to be_an_instance_of Shopping_cart
    end

    it 'Shopping_cart has a name' do
      shopping_cart = Shopping_cart.new('King Soopers', '30items')
      expect(shopping_cart.name).to eq('King Soopers')
    end

    it 'Shopping_cart has capacity' do
      shopping_cart = Shopping_cart.new('King Soopers', '30items')
      expect(shopping_cart.capacity).to eq('30items')
    end

    it 'Shopping_cart has products' do
      shopping_cart = Shopping_cart.new('King Soopers', '30items')

      expect(shopping_cart.products).to eq([])
    end

    it 'Add products to shopping_cart' do
      shopping_cart = Shopping_cart.new('King Soopers', '30items')
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')

      shopping_cart.add_product(product1)
      shopping_cart.add_product(product2)

      expect(shopping_cart.products).to eq([product1, product2])
    end

    it 'Shopping_cart is a hash'do
    shopping_cart = Shopping_cart.new('King Soopers', 30)

    expect(shopping_cart.details).to eq({name: 'King Soopers', capacity: 30})
    end
  end
end
