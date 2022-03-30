require "pry"
require "rspec"
require "./lib/product"
require "./lib/shopping_cart"

RSpec.describe ShoppingCart do
  it "exists" do
    cart = ShoppingCart.new("King Soopers", "30items")
    expect(cart).to be_an_instance_of(ShoppingCart)
  end

  it "has a store name" do
    cart = ShoppingCart.new("King Soopers", "30items")
    expect(cart.name).to eq("King Soopers")
  end

  it "has a capacity" do
    cart = ShoppingCart.new("King Soopers", "30items")
    expect(cart.capacity).to eq 30
  end

  it "has space for products" do
    cart = ShoppingCart.new("King Soopers", "30items")
    expect(cart.products).to eq([])
  end

  it "can add products" do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, "toilet paper", 3.70, "10")
    product2 = Product.new(:meat, "chicken", 4.50, "2")
    cart.add_product(product1)
    cart.add_product(product2)
    expect(cart.products).to eq([product1, product2])
  end

  it "can share details" do
    cart = ShoppingCart.new("King Soopers", "30items")
    expect(cart.details).to eq({name: "King Soopers", capacity: 30})
  end

  it "counts products" do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, "toilet paper", 3.70, "10")
    product2 = Product.new(:meat, "chicken", 4.50, "2")
    product3 = Product.new(:paper, "tissue paper", 1.25, "1")
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    expect(cart.total_number_of_products).to eq 13
  end

  it "can be full" do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, "toilet paper", 3.70, "10")
    product2 = Product.new(:meat, "chicken", 4.50, "2")
    product3 = Product.new(:paper, "tissue paper", 1.25, "1")
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    expect(cart.is_full?).to eq false
    product4 = Product.new(:produce, "apples", 0.99, "20")
    cart.add_product(product4)
    expect(cart.is_full?).to eq true
  end

  it "can show products by category" do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, "toilet paper", 3.70, "10")
    product2 = Product.new(:meat, "chicken", 4.50, "2")
    product3 = Product.new(:paper, "tissue paper", 1.25, "1")
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    product4 = Product.new(:produce, "apples", 0.99, "20")
    cart.add_product(product4)
    expect(cart.products_by_category(:paper)).to eq([product1, product3])
  end

  it "can determine capacity percentage" do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, "toilet paper", 3.70, "10")
    product2 = Product.new(:meat, "chicken", 4.50, "2")
    product3 = Product.new(:paper, "tissue paper", 1.25, "1")
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    expect(cart.percentage_occupied).to eq 43.33
  end

  it "can sort products by quantity" do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, "toilet paper", 3.70, "10")
    product2 = Product.new(:meat, "chicken", 4.50, "2")
    product3 = Product.new(:paper, "tissue paper", 1.25, "1")
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    product4 = Product.new(:produce, "apples", 0.99, "20")
    cart.add_product(product4)
    expect(cart.sorted_products_by_quantity).to eq(
      [product4, product1, product2, product3]
    )
  end

  it "can group products by category" do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, "toilet paper", 3.70, "10")
    product2 = Product.new(:meat, "chicken", 4.50, "2")
    product3 = Product.new(:paper, "tissue paper", 1.25, "1")
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    product4 = Product.new(:produce, "apples", 0.99, "20")
    cart.add_product(product4)
    expect(cart.product_breakdown).to eq(
      {meat: [product2], paper: [product1, product3],
       produce: [product4]}
    )
  end
end
