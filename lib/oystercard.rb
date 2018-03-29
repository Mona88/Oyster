
class Oystercard

  MAX_BALANCE = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    error_mess = "Max balance of £#{MAX_BALANCE} reached, cannot top-up any further."
    @balance += amount
    raise error_mess if @balance > MAX_BALANCE
    @balance
  end

  def deduct(amount)
    @balance -= amount 
  end
end
