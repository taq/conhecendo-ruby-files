begin
  numero = 1
  string = "oi"
  numero + string
rescue StandardError => e
  puts "Ocorreu um erro do tipo #{e.class}: #{e}"
ensure
  puts "Lascou tudo."
end

puts "Fim de programa."
