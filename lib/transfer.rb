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
     self.sender.valid? && self.receiver.valid?
   end

   def execute_transaction
    if
      !self.valid? || self.sender.balance < self.amount
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    elsif
      status == "pending"
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount
      self.status = "complete"
    end
   end

   def reverse_transfer
     if self.status == "complete"
       self.receiver.balance -= self.amount
       self.sender.balance += self.amount
       self.status = "reversed"
     end
   end


end
