require 'minitest'
require './dollar'

Minitest::Unit.autorun

class TestMoney < Minitest::Unit::TestCase
  def test_money
    five = Dollar.new 5
    product = five.times(2)
    assert_equal 10, product.amount
    product = five.times(3)
    assert_equal 15, product.amount
  end
end
