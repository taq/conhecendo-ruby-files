# criando dois Boxes isolados
box1 = Ruby::Box.new
box2 = Ruby::Box.new

# carregando comportamentos diferentes em cada Box
box1.eval(<<~RUBY)
  class Calculator
    def add(a, b)
      a + b
    end
  end
RUBY

box2.eval(<<~RUBY)
  class Calculator
    def add(a, b)
      a + b + 10  # Different behaviour!
    end
  end
RUBY

# each Box has its own class version
calc1 = box1.const_get(:Calculator).new
calc2 = box2.const_get(:Calculator).new

puts calc1.add(2, 3)  # => 5
puts calc2.add(2, 3)  # => 15

# loading files isolating
box1.load("box_plugin_v1.rb")
box2.load("box_plugin_v2.rb")

box1::BoxPlugin.hello
box2::BoxPlugin.hello
