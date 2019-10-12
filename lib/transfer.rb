class Transfer
  attr_accessor :sender, :receiver, :status, :amount


   def initialize(sender, receiver, amount)
     @sender = sender
     @receiver = receiver
     @amount = amount
     self.status = "pending"
     self.amount = 50
   end


end
