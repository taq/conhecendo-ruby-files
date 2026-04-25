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
    notify "Starting the subtraction test"
    assert_equal(0, @calculator.subtract(1, 1), "1 - 1 = 0")
    notify "Subtraction test finished"
  end

  def teardown
    @calculator = nil
  end
end
