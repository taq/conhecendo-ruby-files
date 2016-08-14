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

class Carro
  def novo_metodo
    puts "Novo método!"
  end
end
corsa.novo_metodo

class Carro
  remove_method :novo_metodo
end

corsa.novo_metodo
