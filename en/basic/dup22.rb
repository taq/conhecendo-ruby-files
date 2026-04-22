double = ->(x) { x * 2   }
square = ->(x) { x ** 2  }
half   = ->(x) { x / 2   }
tenth  = ->(x) { x * 0.1 }
crazy  = double >> square >> half >> tenth

puts crazy.call(2)
