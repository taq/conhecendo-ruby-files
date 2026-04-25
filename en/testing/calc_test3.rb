require "test/unit"
require_relative "calc"

class TestCalculator < Test::Unit::TestCase
  def setup
    @calculator = Calculator.new
  end

  test "object full tests" do
    assert_kind_of Calculator, @calculator
    assert_match(/^\d$/, @calculator.add(1, 1).to_s)
    assert_respond_to @calculator, :add
    assert_same @calculator, @calculator
  end

  test "object comparison" do
    assert_operator @calculator.add(1, 1), :>, @calculator.add(1, 0)
  end

  test "must add" do
    assert_equal 2, @calculator.add(1, 1), "1 + 1 = 2"
  end

  test "must subtract" do
    assert_equal 0, @calculator.subtract(1, 1), "1 - 1 = 0"
  end

  def teardown
    @calculator = nil
  end
end
