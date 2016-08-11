numero1 = 1
numero2 = 1

begin
  puts numero1 + numero2
  raise Exception.new("esperava 3") if numero1+numero2!=3
rescue => exception
  puts "Ops, problemas aqui (#{exception.class}), vou tentar de novo."
end
