class Transfer
  attr_accessor :sender, :receiver, :status, :amount


   def initialize(sender, receiver, amount)
     @sender = sender
     @receiver = receiver
     @amount = amount
     self.status = "pending"
     self.amount = 50
   end

   def valid?
     #self.status == self.status
     #self.status.valid?
     self.sender.valid? == self.receiver.valid?
   end

   def execute_transaction
    
   end


end
