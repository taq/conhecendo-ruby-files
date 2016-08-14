class Carro
  attr_reader :marca, :modelo, :tanque, :criado
  attr_accessor :cor

  def initialize(marca, modelo, cor, tanque)
    @marca  = marca
    @modelo = modelo
    @cor    = cor
    @tanque = tanque
    @criado = Time.now
  end

  def initialize_copy(original)
    puts "criado objeto novo #{self.object_id} duplicado de #{original.object_id}"
    @criado = Time.now
  end

  def to_s
    "Marca:#{@marca} Modelo:#{@modelo} Cor:#{@cor} Tanque:#{@tanque}"
  end
end

carro = Carro.new(:chevrolet, :corsa, :preto, 50)
puts carro.criado
puts carro.object_id
sleep 1

outro_carro = carro.dup
puts outro_carro.criado
puts outro_carro.object_id
