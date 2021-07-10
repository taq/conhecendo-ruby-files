dup   = ->(x) { x * 2   }
sqr   = ->(x) { x ** 2  }
half  = ->(x) { x / 2   }
tenp  = ->(x) { x * 0.1 }
crazy = dup >> sqr >> half >> tenp

puts crazy.call(2)

