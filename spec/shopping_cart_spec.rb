require 'rspec'
require './lib/product'
require './lib/shopping_cart'

RSpec.describe 'Shopping Cart' do
    it 'exists' do
        cart = ShoppingCart.new("King Soopers", "30items")

        expect(cart).to be_an_instance_of(ShoppingCart)
    end

    it 'has readable attributes' do
        cart = ShoppingCart.new("King Soopers", "30items")

        expect(cart.name).to eq("King Soopers")
        expect(cart.capacity).to eq("30items")
    end

    it 'can put products in the cart' do
        product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
        product2 = Product.new(:meat, 'chicken', 4.50, '2')
        cart = ShoppingCart.new("King Soopers", "30items")


        expect(cart.products).to eq([])

        cart.add_product(product1)
        cart.add_product(product2)

        expect(cart.products).to eq([product1, product2])
    end

    it 'can be a hash' do
        cart = ShoppingCart.new("King Soopers", "30items")

        expect(cart.details).to eq({name: "King Soopers", capacity: 30})
    end 

    it 'has a capacity' do
        product = Product.new(:paper, 'toilet paper', 3.70, 10)
        cart = ShoppingCart.new("King Soopers", "30items")
        product1 = Product.new(:paper, 'toilet paper', 3.70, 10)
        product2 = Product.new(:meat, 'chicken', 4.50, 2)
        product3 = Product.new(:paper, 'tissue paper', 1.25, 1)
        

        cart.add_product(product1)
        cart.add_product(product2)
        cart.add_product(product3)

        expect(cart.total_number_of_products).to eq(13)
        expect(cart.is_full?).to eq false

        product4 = Product.new(:produce, 'apples', 0.99, 20)

        cart.add_product(product4)

        expect(cart.is_full?).to eq true
    end

    it 'can separate products by category' do
        product = Product.new(:paper, 'toilet paper', 3.70, 10)
        
        product1 = Product.new(:paper, 'toilet paper', 3.70, 10)
        product2 = Product.new(:meat, 'chicken', 4.50, 2)
        product3 = Product.new(:paper, 'tissue paper', 1.25, 1)
        product4 = Product.new(:produce, 'apples', 0.99, 20)

        cart = ShoppingCart.new("King Soopers", "30items")

        cart.add_product(product1)
        cart.add_product(product2)
        cart.add_product(product3)
        cart.add_product(product4)

        expect(cart.products_by_category(:paper)).to eq([product1, product3])
    end
end 