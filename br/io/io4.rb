File.open("teste.txt") do |arquivo|
  arquivo.each do |linha|
    puts linha
  end
end
