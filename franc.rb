class Franc
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Franc.new(amount * multiplier)
  end

  def equals(dollar)
    dollar.instance_of?(Franc) && amount == dollar.amount
  end

  alias == equals
end
