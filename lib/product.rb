
class Product
    attr_reader :category, :name, :unit_price, :quantity
    def initialize(category, name, unit_price, quantity)
        @category = category
        @name = name
        @unit_price = unit_price
        @quantity = quantity
    end

    def total_price
        unit_price * quantity
    end

    def hoard
        @quantity = 0
    end

    def is_hoarded?
        if quantity == 0
            true
        else
            false
        end
    end
end