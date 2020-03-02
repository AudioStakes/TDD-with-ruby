require 'minitest'
require './dollar'

Minitest::Unit.autorun

class TestMoney < Minitest::Unit::TestCase
  def test_multiplication
    five = Dollar.new 5
    product = five.times(2)
    assert_equal Dollar.new(10), product
    product = five.times(3)
    assert_equal Dollar.new(15), product
  end

  def test_equality
    assert Dollar.new(5).equals(Dollar.new(5))
    assert !Dollar.new(5).equals(Dollar.new(6))
  end
end
