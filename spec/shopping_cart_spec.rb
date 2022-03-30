require './lib/product'
require './lib/shopping_cart'

RSpec.describe ShoppingCart do
  it 'exists' do
    cart = ShoppingCart.new({name: "King Soopers", capacity: 30})
    expect(cart).to be_an_instance_of(ShoppingCart)
  end

  describe '#add_product' do
    it "adds products" do
      cart = ShoppingCart.new({name: "King Soopers", capacity: 30})
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')
      cart.add_product(product1)
      cart.add_product(product2)
      expect(cart.products).to eq([product1, product2])
    end
  end

  describe '#details' do
    it "returns details of cart" do
      cart = ShoppingCart.new({name: "King Soopers", capacity: 30})
      cart.details
      expect(cart.details).to eq({name: "King Soopers", capacity: 30})
    end
  end

  describe '#total_number_of_products' do
    xit "returns total number of products" do
      cart = ShoppingCart.new({name: "King Soopers", capacity: 30})
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)
      expect(cart.total_number_of_products).to eq(13)
    end
  end
end
