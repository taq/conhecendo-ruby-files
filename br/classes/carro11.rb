class Carro
  attr_reader :marca, :modelo, :tanque
  attr_accessor :cor
  @@qtde = 0

  def initialize(marca, modelo, cor, tanque)
    @marca  = marca
    @modelo = modelo
    @cor    = cor
    @tanque = tanque
    @@qtde += 1
  end

  def to_s
    "Marca:#{@marca} Modelo:#{@modelo} Cor:#{@cor} Tanque:#{@tanque}"
  end

  def self.qtde
    @@qtde
  end
end

class NovoCarro < Carro
  def to_s
    "Marca nova:#{@marca} Modelo:#{@modelo} Cor:#{@cor} Tanque:#{@tanque}"
  end
end

carro1 = Carro.new(:chevrolet, :corsa, :preto, 50)
carro2 = Carro.new(:chevrolet, :corsa, :prata, 50)
novo_carro = NovoCarro.new(:volks, :gol, :azul, 42)

puts carro1
puts carro2
puts novo_carro
puts Carro.qtde
puts NovoCarro.qtde
