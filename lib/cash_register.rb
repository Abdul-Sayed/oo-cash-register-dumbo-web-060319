class CashRegister
  attr_accessor :discount, :total

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end
  
    ITEMS = []
  
  def add_item(title, price, quantity=0)
    ITEMS << title
    if quantity > 1
      @total += (price * quantity)
    else
      @total += price
    end
  end
  
  def apply_discount
    if (self.discount == 0)
      "There is no discount to apply."
    else
      self.total = (self.total * (1 - (self.discount / 100.0))).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def items
    ITEMS
  end

end
