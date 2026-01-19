# criando dois Boxes isolados
box1 = Ruby::Box.new
box2 = Ruby::Box.new

# carregando comportamentos diferentes em cada Box
box1.eval(<<~RUBY)
  class Calculadora
    def somar(a, b)
      a + b
    end
  end
RUBY

box2.eval(<<~RUBY)
  class Calculadora
    def somar(a, b)
      a + b + 10  # Comportamento diferente!
    end
  end
RUBY

# cada Box tem sua própria versão da classe
calc1 = box1.const_get(:Calculadora).new
calc2 = box2.const_get(:Calculadora).new

puts calc1.somar(2, 3)  # => 5
puts calc2.somar(2, 3)  # => 15

# carregando arquivos isoladamente
box1.load("box_plugin_v1.rb")
box2.load("box_plugin_v2.rb")

box1::BoxPlugin.hello
box2::BoxPlugin.hello
