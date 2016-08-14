class Carro
  attr_reader :marca, :modelo, :tanque
  attr_accessor :cor

  def initialize(marca, modelo, cor, tanque)
    @marca  = marca
    @modelo = modelo
    @cor    = cor
    @tanque = tanque
  end

  def to_s
    "Marca:#{@marca} Modelo:#{@modelo} Cor:#{@cor} Tanque:#{@tanque}"
  end
end

corsa = Carro.new(:chevrolet, :corsa, :preto, 50)
gol   = Carro.new(:volks, :gol, :azul, 42)

(class << corsa; self; end).send(:define_method, "multiplica_tanque") do |valor|
  @tanque * valor
end

puts corsa.multiplica_tanque(2)
puts gol.multiplica_tanque(2)
