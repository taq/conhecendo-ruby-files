begin
  numero = 1
  string = "oi"
  numero + string
rescue StandardError => e
  puts "Ocorreu um erro: #{e}"
end
