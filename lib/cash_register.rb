class CashRegister
  attr_accessor :discount, :total

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end
  
  def add_item(title, price, quantity=0)
    if quantity > 1
      @total += (price * quantity)
    else
      @total += price
    end
  end
  
def apply_discount
  self.total = self.total * 0.8
end

end
