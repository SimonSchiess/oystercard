class Oystercard 

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(money)
    check_money(money)
    @balance += money
  end

  private

  def check_money(money)
    fail 'Cannot top_up a negative value' if money < 0
  end

end
