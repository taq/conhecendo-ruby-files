require "test/unit"
    require_relative "calc"

class TesteCalculadora < Test::Unit::TestCase
  def setup
    @calculadora = Calculadora.new
  end

  def test_adicao
    assert_equal(2, @calculadora.soma(1, 1), "1 + 1 = 2")
  end

  def test_subtracao
    assert_equal(0, @calculadora.subtrai(1, 1), "1 - 1 = 0")
  end

  def teardown
    @calculadora = nil
  end
end
