class Bank

  def initialize(name)
    @name = name
  end

  def balance
    @balance
  end

  def with_draw(amount)
    @balance -= amount
  end

  def deposite(amount)
    @balance = 0
    @balance += amount
  end

  def check_balance
    @balance
  end

end

bank = Bank.new("name")
bank.deposite(56)
bank.with_draw(6)
p bank.balance
