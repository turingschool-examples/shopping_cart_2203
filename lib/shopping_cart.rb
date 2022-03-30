class ShoppingCart
    attr_reader :name, :capacity, :products
    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @products = []
    end

    def add_product(product)
        products << product
    end

    def total_number_of_products
        total_quantity = []
        products.each do |product|
            total_quantity << product.quantity
        end
        total_quantity.inject(:+)
    end

    def is_full?
        if @products.count <= 3 
            false
        else
            true
        end
    end

    def details
        details = {name: "King Soopers", capacity: 30}
    end 

    def products_by_category(category)
        product_type = []
            products.each do |product|
                if product.category == category
                    product_type << product
                end
            end
            product_type
    end
end