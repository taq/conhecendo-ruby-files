class Carro
  def initialize(marca,modelo,cor,tanque)
    @marca  = marca
    @modelo = modelo
    @cor    = cor
    @tanque = tanque
  end
end
corsa = Carro.new(:chevrolet, :corsa, :preto, 50)
p corsa
puts corsa
