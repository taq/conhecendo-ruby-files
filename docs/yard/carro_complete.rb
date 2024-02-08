# = Classe
# Essa é a classe base para *todos* os carros que vamos
# criar no nosso programa. A partir dela criamos carros
# de _marcas_ específicas. Verique o método to_s dessa
# classe Carro para uma descrição mais legível.
#
# @author Eustáquio Rangel
#
# Parâmetros obrigatórios para criar o carro
# Não se esqueça de que todo carro vai ter os custos de:
# * IPVA
# * Seguro obrigatório
# * Seguro
# * Manutenção
#
# @!attribute [r] marca
#   @return [Symbol] retorna a marca do carro
#
# @!attribute [r] modelo
#   @return [Symbol] retorna o modelo do carro
#
# @!attribute [r] tanque
#   @return [Integer] retorna a capacidade do tanque do carro, em litros
#
# @!attribute [rw] cor
#   @return [Symbol] atribui e retorna a cor do carro
#
class Carro
  attr_reader :marca, :modelo, :tanque
  attr_accessor :cor

  # @param marca [Symbol] a marca do carro
  # @param modelo [Symbol] o modelo do carro
  # @param cor [Symbol] a cor do carro
  # @param tanque [Integer] a capacidade, em litros, do tanque do carro
  #
  # @return um novo objeto da classe Carro
  def initialize(marca, modelo, cor, tanque)
    @marca  = marca
    @modelo = modelo
    @cor    = cor
    @tanque = tanque
  end

  # Converte o carro em uma representação mais legível
  def to_s
    "Marca:#{@marca} Modelo:#{@modelo} Cor:#{@cor} Tanque:#{@tanque}"
  end
end

# Classe de um _vokinho_, derivada da classe Carro.
class Fusca < Carro
  # @return [Boolean] se paga IPVA esse ano
  def ipva
    false
  end
end
