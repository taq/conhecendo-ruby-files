class Carro
  attr_reader :marca, :modelo, :tanque
  attr_accessor :cor

  def initialize(marca,modelo,cor,tanque)
    @marca  = marca
    @modelo = modelo
    @cor    = cor
    @tanque = tanque
  end

  def to_s
    "Marca:#{@marca} Modelo:#{@modelo} Cor:#{@cor} Tanque:#{@tanque}"
  end
end

class Carro
  alias to_s_old to_s

  def to_s
    "Esse é um novo jeito de mostrar isso: #{to_s_old}"
  end
end

carro = Carro.new(:chevrolet,:corsa,:preto,50)
puts carro
puts carro.to_s_old
