require './lib/product'
require './lib/shopping_cart'

describe ShoppingCart do
  context "iteration 2" do

    it "exits" do
      cart = ShoppingCart.new("King Soopers", "30items", [])
    end

    it "Tells you it's name" do
      cart = ShoppingCart.new("King Soopers", "30items", [])
      expect(cart.name).to eq "King Soopers"
    end

    it "Tells you the capacity"
      cart = ShoppingCart.new("King Soopers", "30items", [])
      expect(cart)
    end

    it "can have products" do
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')
      products = [product1, product2]
      cart = ShoppingCart.new("King soopers", "30items", products)
    end

    it "can add products" do
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      products = []
      cart = ShoppingCart.new("King soopers", "30items", products)
      cart.add_product(product1)
      expect(cart.products).to eq([product1])
    end
  end
end
