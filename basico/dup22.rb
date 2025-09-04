duplicar = ->(x) { x * 2   }
quadrado = ->(x) { x ** 2  }
metade   = ->(x) { x / 2   }
decimo   = ->(x) { x * 0.1 }
crazy = duplicar >> quadrado >> metade >> decimo

puts crazy.call(2)

