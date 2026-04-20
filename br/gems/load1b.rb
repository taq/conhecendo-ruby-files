class Teste
  def initialize
    puts "Comportamento padrão"
  end
end

load("load2.rb", true)

puts "-" * 50
puts "Dentro de load1:"
Teste.new
