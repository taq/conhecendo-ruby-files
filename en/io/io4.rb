File.open("test.txt") do |file|
  file.each do |line|
    puts line
  end
end
