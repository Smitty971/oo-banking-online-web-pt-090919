class BankAccount
  attr_accessor :name, :balance

  def initialize(name)
    @name = name
    @balance = 1000
    self.status = "open"
  end
end
