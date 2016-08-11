begin
  numero = 1
  string = "oi"
  numero + string
rescue StandardError => exception
  puts "Ocorreu um erro: #{exception}"
end
