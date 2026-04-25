require "test/unit"
require_relative "calc"

class TestCalculator < Test::Unit::TestCase
  def setup
    @calculator = Calculator.new
  end

  def test_addition
    assert_equal(2, @calculator.add(1, 1), "1 + 1 = 2")
  end

  def test_subtraction
    assert_equal(0, @calculator.subtract(1, 1), "1 - 1 = 0")
  end

  def test_square_root
    pend "We haven't implemented this method yet"
    assert_equal(2, @calculator.raiz_quadrada(4), "2 is the square root of 4")
  end

  def teardown
    @calculator = nil
  end
end
