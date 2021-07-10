class NameNotEqual < StandardError
  def initialize(current, expected)
    super "Você digitou um nome inválido (#{current})! Era esperado #{expected}."
  end
end

begin
  correct = "eustaquio"
  puts "Digite o meu nome: "
  name = gets.chomp

  raise NameNotEqual.new(name, correct) if name != correct

  puts "Digitou correto!"
rescue NameNotEqual => e
  puts e
end
