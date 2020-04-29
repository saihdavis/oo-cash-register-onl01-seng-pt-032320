require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :purchases, :prices
  
  def initialize(discount = 0)
    @discount= discount 
    @total= 0
    @purchases = []
  end  
  
  def add_item(item, price, quantity = 1)
    self.prices = [item, price, quantity]
    @prices = price
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
  
  def void_last_transaction
    #binding.pry
    while @total -= @prices do
      self.purchases.any?
      return @total
    
      
    
  
end
end
end
