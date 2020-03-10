require 'minitest'
require './dollar'
require './franc'
require './money'

Minitest::Unit.autorun

class TestMoney < Minitest::Unit::TestCase
  def test_multiplication
    five = Money.dollar 5
    product = five.times(2)
    assert_equal Money.dollar(10), product
    product = five.times(3)
    assert_equal Money.dollar(15), product
  end

  def test_equality
    assert Money.dollar(5).equals(Money.dollar(5))
    assert !Money.dollar(5).equals(Money.dollar(6))
    assert !Money.franc(5).equals(Money.dollar(5))
  end

  def test_currency
    assert_equal "USD", Money.dollar(1).currency()
    assert_equal "CHF", Money.franc(1).currency()
  end
end
