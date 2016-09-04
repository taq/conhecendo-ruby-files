class Volante
  attr_reader :cor

  def initialize(cor)
    @cor = cor
  end
end

class Carro
  attr_reader :volante

  def initialize(volante)
    @volante = volante
  end
end

volante = Volante.new(:preto)
carro   = Carro.new(volante)

puts carro.volante.cor if carro && carro.volante && carro.volante.cor
#puts carro.try(:volante).try(:cor)
puts carro&.volante&.cor
