class Money
  attr_reader :amount, :currency
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def equals(money)
    money.is_a?(Money)\
    && amount == money.amount\
    && money.class == self.class
  end
  alias == equals

  def self.dollar(amount)
    Dollar.new(amount, "USD")
  end

  def self.franc(amount)
    Franc.new(amount, "CHF")
  end

  def times(multiplier)
    raise 'System Error: method missing'
  end
end
