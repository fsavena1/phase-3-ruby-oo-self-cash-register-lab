require 'pry'

class CashRegister 
    attr_accessor :discount, :total, :items, :prev_item

    

    def initialize(discount = 0) 
        @discount=discount
        @total = 0
        @items = []
    end

    # def total
    #     @total = total
    # end

    def add_item(title, price, quantity = 1)
        @total += (price * quantity) 
        self.prev_item = (price * quantity)
        @total 
        quantity.times { @items << title }

    end

    def apply_discount
        @total -= (self.total * (self.discount / 100) )
     
    end

    def void_last_transaction
        @total -= self.prev_item
       
    end


  
end
binding.pry
