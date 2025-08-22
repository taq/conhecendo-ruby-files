begin
  numero = 1
  string = "oi"
  numero + string
rescue => e
  puts "Ocorreu um erro do tipo #{e.class}: #{e}"
end
