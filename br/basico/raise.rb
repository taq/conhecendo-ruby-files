numero1 = 1
numero2 = 1

begin
  puts numero1 + numero2
  raise StandardError, "esperava 3" if numero1 + numero2 != 3
rescue StandardError => e
  puts "Ops, problemas aqui (#{e.class}), vou tentar de novo."
end
