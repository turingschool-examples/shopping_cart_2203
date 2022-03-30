class Product

    attr_reader :category, :name, :unit_price, :quantity

    attr_accessor :quantity


    def initialize(category, name, unit_price, quantity)
        @category = category
        @name = name
        @unit_price = unit_price
        @quantity = quantity
    end

    def total_price
        @unit_price * @quantity
    end

    def num_quantity
        @quantity.to_i
    end

    def is_hoarded?
        if @quantity >= 100
            true
        else
            false
        end
    end

    def hoard
        @quantity += 100
    end
end