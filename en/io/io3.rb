f = File.open("test.txt")

f.each do |line|
  puts line
end

f.close
