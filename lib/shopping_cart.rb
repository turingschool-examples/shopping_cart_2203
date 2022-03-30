require 'pry'
require './lib/product'

class ShoppingCart
  attr_reader :name,
              :capacity,
              :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
   end

   def add_product(product)
     @products << product
   end

   def details
     @details = {
       :name => @name,
       :capacity => @capacity
     }
   end

   def total_number_of_products
     total = 0
     products.each do |e|
       total += e.quantity
     end
     total
   end

   def is_full?
     total_number_of_products >= capacity
   end

   def products_by_category(category)
     this_cat = []
     products.each do |e|
       this_cat << e if e.category == category
     end
     this_cat
   end

   def percentage_occupied
     percent = (total_number_of_products.to_f / @capacity.to_f) * 100.00
     percent.round(2)
   end
end
