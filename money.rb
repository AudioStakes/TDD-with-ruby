class Money
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def equals(money)
    money.is_a?(Money)\
    && amount == money.amount\
    && money.class == self.class
  end
  alias == equals
end
