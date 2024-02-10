class Parafuso
  attr_reader :polegadas

  def initialize(polegadas)
    @polegadas = polegadas
  end

  def <=>(outro)
    self.polegadas <=> outro.polegadas
  end

  def to_s
    "Parafuso #{object_id} com #{@polegadas}\""
  end
end

class CaixaDeParafusos
  include Enumerable

  def initialize
    @parafusos = []
  end

  def <<(parafuso)
    @parafusos << parafuso
  end

  def each
    @parafusos.each { |it| yield(it) }
  end
end

caixa = CaixaDeParafusos.new
caixa << Parafuso.new(1)  
caixa << Parafuso.new(2)
caixa << Parafuso.new(3)

puts "o menor parafuso na caixa é: #{caixa.min}"
puts "o maior parafuso na caixa é: #{caixa.max}"
puts "os parafusos com medidas par são: #{caixa.select { |it| it.polegadas % 2 == 0}.join(',')}"
puts "duplicando a caixa: #{caixa.map { |it| Parafuso.new(it.polegadas * 2).to_s }}"
