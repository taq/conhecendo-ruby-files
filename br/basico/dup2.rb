duplicar = ->(x) { x * 2  }
quadrado = ->(x) { x ** 2 }
dup2     = duplicar >> quadrado

puts dup2.call(2)

# seria o mesmo que
puts quadrado.call(duplicar.call(2))
