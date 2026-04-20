str =<<FIM
texto para mostrar como podemos separar palavras do texto
para estatística de quantas vezes as palavras se repetem no
texto
FIM

scanner = Fiber.new do
  str.scan(/\w\p{Latin}+/) do |word|
    Fiber.yield word.downcase
  end
  puts "acabou!"
end

words = Hash.new(0)

while word = scanner.resume
  words[word] += 1
end

words.each do |word,count|
  puts "#{word}:#{count}"
end
