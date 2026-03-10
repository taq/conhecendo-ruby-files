require 'minitest/autorun'
require_relative 'calc'

describe Calculadora do
  before do
    @calculadora = Calculadora.new
  end

  after do
    @calculadora = nil
  end

  describe 'média' do
    it 'deve ser igual a 2' do
      # esse é o mock
      colecao = MiniTest::Mock.new
      colecao.expect :valores, [1, 2, 3]

      # aqui enviamos para o método media da Calculadora
      @calculadora.media(colecao)

      # aqui verificamos que o método valores do mock foi chamado, dentro de media
      colecao.verify
    end
  end
end
