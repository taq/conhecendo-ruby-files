class C
   def x; "x"; end
end

module M
   def x; '[' + super + ']'; end
   def y; "y"; end
end

class C
   prepend M
end

p C.ancestors # => [M, C, Object, Kernel, BasicObject]
c = C.new

puts c.x # => [x]
puts c.y # => y

