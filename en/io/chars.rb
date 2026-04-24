File.open("test.txt") do |file|
  file.each_char do |char|
    print "[#{char}]"
  end
end
