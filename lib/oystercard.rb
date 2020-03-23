class Oystercard 

  attr_reader :balance

  MAXIMUM_BALANCE = 90

  def initialize
    @balance = 0
  end

  def top_up(money)
    check_money(money)
    @balance += money
  end

  private

  def check_money(money)
    fail "Maximum balance is #{MAXIMUM_BALANCE}" if @balance + money > MAXIMUM_BALANCE
    fail 'Cannot top_up a negative value' if money < 0
  end

end
