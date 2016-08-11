class NameNotEqual < StandardError
  def initialize(current,expected)
    super "você digitou um nome inválido (#{current})! era esperado #{expected}."
  end
end

begin
  correct = "eustaquio"
  puts "digite o meu nome: "
  name = gets.chomp
  raise NameNotEqual.new(name,correct) if name!=correct
  puts "digitou correto!"
rescue NameNotEqual => e
  puts e
end
