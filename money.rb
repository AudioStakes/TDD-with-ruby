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

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end

  def times(multiplier)
    raise 'System Error: method missing'
  end
end
