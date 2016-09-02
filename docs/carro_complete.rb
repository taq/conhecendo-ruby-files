# = Classe
# Essa é a classe base para *todos* os carros que vamos
# criar no nosso programa. A partir dela criamos carros
# de _marcas_ específicas. Verique o método to_s dessa
# classe Carro para uma descrição mais legível.
# ---
#
# == Sobre o autor e licença
#
# Autor:: Eustáquio ’TaQ’ Rangel
# Website:: http://eustaquiorangel.com
# Email:: mailto:naoteconto@eustaquiorangel.com
# Licença:: +GPL+ Clique aqui para ver mais[http://www.fsf.org]
#--
# Ei, ninguém deve ler isso.
#++
# Obrigado pela preferência.
class Carro
  attr_reader :marca, :modelo, :tanque
  attr_accessor :cor

  # Parâmetros obrigatórios para criar o carro
  # Não se esqueça de que todo carro vai ter os custos de:
  # * IPVA
  # * Seguro obrigatório
  # * Seguro
  # * Manutenção
  def initialize(marca,modelo,cor,tanque)
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
  def ipva
    false
  end
end

