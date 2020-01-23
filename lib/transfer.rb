
class Transfer
  attr_reader :sender, :receiver, :amount, :status
  
  def initialize(sender,receiver,amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = 'pending'
 end
 
 def valid?
   if @sender.valid? && @receiver.valid?
     true
   else
     false
   end
 
 end
 
 def execute_transaction
   if @amount <= @sender.valid?
     @receiver >= @amount
      @status = "complete"
   else
     @amount >= @sender.valid?
      @status = "rejected"
 end
 end
end






















# class Transfer
#   attr_reader :sender, :receiver, :amount, :status
#   def initialize(sender,receiver,amount)
#   @sender = sender
#   @receiver = receiver
#   @amount = amount
#   @status = 'pending'
#   end
  
  # def valid?
  # if @sender.valid? and @receiver.valid?
  # return true
  # else
  # return false
  # end
  # end
  
  # def execute_transaction
  #     if @amount > @sender.balance or !self.valid?
  #     @status = "rejected"
        
  #     "Transaction rejected. Please check your account balance."
  #     elsif @status == "pending" and @amount <= @sender.balance and self.valid?
  #     @sender.balance -= @amount
  #     @receiver.balance += @amount
  #     @status = "complete"
      
  #     end
  
  # end
  
  # def reverse_transfer
  #   if @status == "complete"
  #   @sender.balance += @amount
  #   @receiver.balance -= @amount
  #     @status = "reversed"
  #   end
  # end
  
  
# end
