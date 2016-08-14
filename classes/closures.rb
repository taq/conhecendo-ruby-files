def cria_contador(inicial, incremento)
  contador = inicial
  lambda { contador += incremento }
end

meu_contador = cria_contador(0, 1)

puts meu_contador.call
puts meu_contador.call
puts meu_contador.call
