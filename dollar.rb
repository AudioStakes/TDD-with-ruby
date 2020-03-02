class Dollar
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def equals(dollar)
    dollar.instance_of?(Dollar) && amount == dollar.amount
  end

  alias == equals
end
