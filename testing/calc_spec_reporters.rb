require 'minitest/autorun'
require_relative 'calc'

require "minitest/reporters"
Minitest::Reporters.use!

describe Calculadora do
  before do
    @calculadora = Calculadora.new
  end

  after do
    @calculadora = nil
  end

  describe 'objeto' do
    it 'deve ser do tipo de Calculadora' do
      expect(@calculadora).must_be_kind_of Calculadora
    end

    it 'deve ter um método para somar' do
      expect(@calculadora).must_respond_to :soma
    end

    it 'deve ter um método para subtrair' do
      expect(@calculadora).must_respond_to :subtrai
    end
  end

  describe 'soma' do
    it 'deve ser igual a 2' do
      expect(@calculadora.soma(1, 1)).must_equal 2
    end
  end

  describe 'subtração' do
    it 'deve ser igual a 0' do
      expect(@calculadora.subtrai(1, 1)).must_equal 0
    end
  end
end
