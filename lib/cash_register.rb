require 'pry'

class CashRegister
  
  attr_accessor :total, :discount
  
  @@items = []
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
    @total += (price*quantity)
  end
  
  def apply_discount
    self.total = @total * @discount
    
  end
  
end
