
class Oystercard

  MAX_BALANCE = 90

  attr_reader :balance, :in_journey

  def initialize
    @balance = 0
    @in_journey = false
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

  def touch_in
    @in_journey = true
  end

  def touch_out
    @in_journey = false
  end

end
