File.open("teste.txt") do |arquivo|
  arquivo.each_byte do |byte|
    print "[#{byte}]"
  end
end
