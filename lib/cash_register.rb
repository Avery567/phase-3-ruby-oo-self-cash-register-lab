
Class CashRegister

    @@item = []

    def initialize(discount =0)
            @discount = discount
            @total = 0
    end

    def total=(newTotal)
        @total = newTotal
    end

    def total
        @total
    end

    def discount
        @discount

    def add_item(title, price, quantity = 1)
        @total = (price * quantity)
        item = {title: title, price: price, quantity: quantity}
        @@items << item
    end

    def apply_discount
        discount_amount = @total/@discount
        @total = @total - discount_amount
    end
end


