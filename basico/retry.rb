numero1 = 1
numero2 = "dois"

begin
  puts numero1 + numero2
rescue StandardError => exception
  puts "Ops, problemas aqui (#{exception.class}), vou tentar de novo."
  numero2 = 2
  retry
end
