class Carro
  attr_reader :marca, :modelo, :tanque
  attr_accessor :cor

  def initialize(marca, modelo, cor, tanque)
    @marca  = marca
    @modelo = modelo
    @cor    = cor
    @tanque = tanque

    binding.irb
  end
end

carro = Carro.new(:fiat, :pulse, :branco, 40)
p carro
