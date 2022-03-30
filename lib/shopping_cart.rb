require './lib/product'
require 'pry'
class ShoppingCart

    attr_reader :name, :capacity, :products

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @products = []
        
    end

    def add_product(product)
        @products << product
    end

    def details
        h = {
            name: @name, 
            capacity: @capacity.to_i
        }
        h
    end

    def total_number_of_products
        #x = Hash[*self.products.flatten(0)] #wouldn't let me call .quantity here and I'm pretty lost
        #x = @quantity.to_i
        x = []
        self.products.each do |quant|
            quant.quantity.to_i
            x << quant
        end
        x
        
     end

     def is_full?
        if @capacity.to_i <= self.total_number_of_products
            true
        else
            false
        end
     end

     def products_by_category(cat)
        
     end

     def percentage_occupied
        self.total_number_of_products % @capacity
     end

     def sorted_products_by_quantity
     end

     def product_breakdown
     end


end