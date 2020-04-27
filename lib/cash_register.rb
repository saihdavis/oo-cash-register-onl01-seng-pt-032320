require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :purchases 
  
  def initialize(discount = 0, total = 0)
    @discount= discount 
    @total= total
    @purchases = []
  end  
  
  def add_item(item, price, quantity = 1)
 
    @total += price * quantity 
    if quantity > 1 
      counter = 0 
    while counter < quantity 
      @purchases << item 
      counter += 1 
  end
    
  else
      @purchases << item
  end 
    
  def apply_discount
    #binding.pry
    if discount > 0
      #@total += @total * discount/100
      #percent_left = 100 - discount   
      percent = (100 - discount.to_f) / 100
      @total = @total * percent 
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      return "There is no discount to apply."
  end
end
  
  def items
    self.purchases
  end

end

end