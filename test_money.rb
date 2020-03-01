require 'minitest'
require './dollar'

Minitest::Unit.autorun

class TestMoney < Minitest::Unit::TestCase
  def test_money
    five = Dollar.new 5
    five.times(2)
    assert_equal 10, five.amount
  end
end
