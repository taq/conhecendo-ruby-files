require "minitest/autorun"
require_relative "calc"

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def teardown
    @calculator = nil
  end

  def test_object
    assert_kind_of Calculator, @calculator
    assert_match /^\d$/, @calculator.add(1, 1).to_s
    assert_respond_to @calculator, :add
    assert_same @calculator, @calculator
  end

  def test_objects
    assert_operator @calculator.add(1, 1), :>, @calculator.add(1, 0)
  end

  def test_addition
    assert_equal 2, @calculator.add(1, 1), "1 + 1 = 2"
  end

  def test_subtraction
    assert_equal 0, @calculator.subtract(1, 1), "1 - 1 = 0"
  end
end
