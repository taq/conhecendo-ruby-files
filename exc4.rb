begin
  numero = 1
  string = "oi"
  numero + string
rescue => exception
  puts "Ocorreu um erro do tipo #{exception.class}: #{exception}"
  puts msg
ensure
  puts "Lascou tudo."
end
puts "Fim de programa."
