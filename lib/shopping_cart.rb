class ShoppingCart
    attr_reader :name, :capacity, :products
    def initialize(name, capacity)
        @name = name
        @capacity = capacity.to_i
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
        total_quantity.sum
    end

    def is_full?
        total_number_of_products >= @capacity 
    end

    def details
        # cart_details = {}
        # cart_details[:name] = @name
        # cart_details[:capacity] = name
        # cart_details
        cart_details = {name: @name, capacity: @capacity.to_i}
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

    def percentage_occupied
        products.quantity / capacity * 100
    end
end