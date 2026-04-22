double  = ->(x) { x * 2  }
square  = ->(x) { x ** 2 }
double2 = double >> square

puts double2.call(2)

# would be the same as
puts square.call(double.call(2))
