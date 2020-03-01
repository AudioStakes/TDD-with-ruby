class Dollar
  attr_accessor :amount
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def equals(dollar)
    dollar.instance_of?(Dollar) && amount == dollar.amount
  end
end
