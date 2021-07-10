require 'test/unit'
require_relative 'calc'

class TesteCalculadora < Test::Unit::TestCase
  def setup
    @calculadora = Calculadora.new
  end

  def test_adicao
    assert_equal(2, @calculadora.soma(1, 1), '1 + 1 = 2')
  end

  def test_subtracao
    assert_equal(0, @calculadora.subtrai(1, 1), '1 - 1 = 0')
  end

  def test_raiz_quadrada
    omit('Fugi da escola, não sei fazer isso')
    assert_true(1 == 1)
  end

  def test_linux
    omit_unless('Só funciona no Linux', RUBY_PLATFORM.match?(/linux/i))
    assert_true(Dir.exist?('/tmp'))
  end

  def test_tarde
    omit_if('Só roda à tarde', Time.now.hour >= 12)
    assert_true(Time.hour.hour >= 12)
  end

  def teardown
    @calculadora = nil
  end
end

