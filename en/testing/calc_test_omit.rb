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
    omit "Skipped school, don't know how to do this"
    assert_true(1 == 1)
  end

  def test_linux
    omit_unless "Only works on Linux", RUBY_PLATFORM.match?(/linux/i)
    assert_true(Dir.exist?("/tmp"))
  end

  def test_late
    omit_if "It only runs in the afternoon", Time.now.hour >= 12
    assert_true(Time.hour.hour < 12)
  end

  def teardown
    @calculator = nil
  end
end

