require "test/unit"
require_relative "calc"

class TesteCalculadora < Test::Unit::TestCase
  def setup
    @calculadora = Calculadora.new
  end

  def test_objeto
    assert_kind_of Calculadora, @calculadora
    assert_match /^\d$/, @calculadora.soma(1, 1).to_s
    assert_respond_to @calculadora, :soma
    assert_same @calculadora, @calculadora
  end

  def test_objetos
    assert_operator @calculadora.soma(1, 1), :>, @calculadora.soma(1, 0)
  end

  def test_adicao
    assert_equal 2, @calculadora.soma(1, 1), "1 + 1 = 2"
  end

  def test_subtracao
    assert_equal 0, @calculadora.subtrai(1, 1), "1 - 1 = 0"
  end

  def teardown
    @calculadora = nil
  end
end
