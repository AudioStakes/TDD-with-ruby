class Money
  attr_reader :amount, :currency
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def equals(money)
    money.is_a?(Money)\
    && amount == money.amount\
    && money.currency == self.currency
  end
  alias == equals

  def self.dollar(amount)
    Money.new(amount, "USD")
  end

  def self.franc(amount)
    Money.new(amount, "CHF")
  end

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end
end
