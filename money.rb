class Money
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def equals(money)
    money.is_a?(Money) && amount == money.amount
  end
  alias == equals
end
