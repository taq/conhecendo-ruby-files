class CaixaDeParafusos
  include Comparable
  attr_reader :quantidade

  def initialize(quantidade)
    @quantidade = quantidade
  end

  def <=>(outra)
    self.quantidade <=> outra.quantidade
  end
end

caixa1 = CaixaDeParafusos.new(10)
caixa2 = CaixaDeParafusos.new(20)
caixa3 = CaixaDeParafusos.new(10)

puts caixa1 < caixa2
puts caixa2 > caixa3
puts caixa1 == caixa3
puts caixa3 > caixa2
puts caixa1.between?(caixa3, caixa2)
