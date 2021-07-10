dup  = ->(x) { x * 2  }
sqr  = ->(x) { x ** 2 }
dup2 = dup >> sqr

puts dup2.call(2)

# seria o mesmo que
puts sqr.call(dup.call(2))
