class NameNotEqual < StandardError
  def initialize(current, expected)
    super("You typed an invalid name (#{current})! Expected #{expected}.")
  end
end

begin
  correct = "eustaquio"
  puts "Type my name: "
  name = gets.chomp

  raise NameNotEqual.new(name, correct) if name != correct

  puts "Typed correctly!"
rescue NameNotEqual => e
  puts e
end
