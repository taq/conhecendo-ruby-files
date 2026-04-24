File.open("test.txt") do |file|
  file.each_byte do |byte|
    print "[#{byte}]"
  end
end
