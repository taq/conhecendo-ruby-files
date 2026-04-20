@@qtde = 10

class Carro
  attr_reader :marca, :modelo, :tanque
  attr_accessor :cor
  @@qtde = 0
  puts self

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

puts self
puts @@qtde
