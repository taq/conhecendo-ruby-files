require 'test_helper'

class PortnumTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Portnum::VERSION
  end

  def test_par
    assert_respond_to 1, :par?
  end

  def test_par_ok
    assert 2.par?
    assert !1.par?
  end

  def test_impar
    assert_respond_to 1, :impar?
  end

  def test_impar_ok
    assert 1.impar?
    assert !2.impar?
  end
end
