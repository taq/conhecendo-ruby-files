f = File.open("teste.txt")

f.each do |linha|
  puts linha
end

f.close
