require 'minitest/autorun'
require 'minitest/mock'
require_relative 'calc'

describe Calculadora do
  let(:calculadora) { Calculadora.new }

  describe 'média' do
    it 'deve ser igual a 2' do
      # esse é o mock
      colecao = Minitest::Mock.new
      colecao.expect :valores, [1, 2, 3]

      # aqui enviamos para o método media da Calculadora
      expect(calculadora.media(colecao)).must_equal 2

      # aqui verificamos que o método valores do mock foi chamado, dentro de media
      colecao.verify
    end
  end
end
