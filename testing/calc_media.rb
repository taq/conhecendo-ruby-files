class Calculadora
  def soma(a, b)
    a + b
  end

  def subtrai(a, b)
    a - b
  end

  def media(colecao)
    val = colecao.valores
    val.reduce(:+) / val.size.to_f
  end
end
