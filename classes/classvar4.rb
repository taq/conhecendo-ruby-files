class Carro
  attr_reader :marca, :modelo, :tanque
  attr_accessor :cor

  class << self
    attr_accessor :qtde
  end
  @qtde = 0

  def initialize(marca, modelo, cor, tanque)
    @marca  = marca
    @modelo = modelo
    @cor    = cor
    @tanque = tanque
    self.class.qtde += 1
  end

  def to_s
    "Marca:#{@marca} Modelo:#{@modelo} Cor:#{@cor} Tanque:#{@tanque}"
  end
end

corsa   = Carro.new(:chevrolet, :corsa, :preto, 50)
gol     = Carro.new(:volks ,:gol, :azul, 42)
ferrari = Carro.new(:ferrari, :enzo, :vermelho, 70)
puts Carro.qtde
