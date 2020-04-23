require 'pry'
class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(total = 0)
    @total= total
  end  
  
  def discount
   # binding.pry
    self.total
end
end