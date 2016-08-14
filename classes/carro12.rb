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
end

class NovoCarro < Carro
  def to_s
    "Novo Carro: "+super
  end
end

carro      = Carro.new(:chevrolet, :corsa, :preto, 50)
novo_carro = NovoCarro.new(:volks, :gol, :azul, 42)

puts carro
puts novo_carro
