class BankAccount
  attr_accessor :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    self.status = "open"
  end

  def despoit

  end

  def display_balance

  end
end
