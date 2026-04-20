require 'minitest/autorun'
require 'minitest/mock'
require_relative 'calc'

describe Calculadora do
  let(:calculadora) { Calculadora.new }

  describe 'soma maluca' do
    it 'deve ser igual a 3' do
      calculadora.stub :soma, 3 do
        expect(calculadora.soma(1, 1)).must_equal 3
      end
    end
  end
end
