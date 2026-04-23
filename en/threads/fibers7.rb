str =<<FIM
text to show how we can split words in text
to get some statistics about how many times words are repeated
on text
FIM

scanner = Fiber.new do
  str.scan(/\w\p{Latin}+/) do |word|
    Fiber.yield word.downcase
  end
  puts "done!"
end

words = Hash.new(0)

while word = scanner.resume
  words[word] += 1
end

words.each do |word,count|
  puts "#{word}:#{count}"
end
