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

  def qtde
    @@qtde
  end
end

corsa    = Carro.new(:chevrolet, :corsa, :preto, 50)
gol      = Carro.new(:volks, :gol, :azul, 42)
ferrari  = Carro.new(:ferrari, :viper, :vermelho, 70)

puts ferrari.qtde
