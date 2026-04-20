def soma(a, b)
  lambda { a + b } # retorna uma lambda/função
end

def subtrai(a, b)
  lambda { a - b } # retorna uma lambda/função
end

def operacao(op) # recebe uma lambda/função
  op.call
end

puts operacao(soma(1, 2))
puts operacao(subtrai(1, 2))
