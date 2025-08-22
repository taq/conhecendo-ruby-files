numero1 = 1
numero2 = "dois"

begin
  puts numero1 + numero2
rescue StandardError => e
  puts "Ops, problemas aqui (#{e.class}), vou tentar de novo."
  puts e.backtrace

  numero2 = 2
  retry
end
