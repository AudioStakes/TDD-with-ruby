require 'minitest'
require './dollar'

Minitest::Unit.autorun

class TestMoney < Minitest::Unit::TestCase
  def test_multiplication
    five = Dollar.new 5
    product = five.times(2)
    assert_equal 10, product.amount
    product = five.times(3)
    assert_equal 15, product.amount
  end

  def test_equality
    assert Dollar.new(5).equals(Dollar.new(5))
    assert !Dollar.new(5).equals(Dollar.new(6))
  end
end
