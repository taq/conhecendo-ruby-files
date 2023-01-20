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
      colecao = MiniTest::Mock.new
      colecao.expect :valores, [1, 2, 3]
      @calculadora.media(colecao)
      colecao.verify
    end
  end
end
