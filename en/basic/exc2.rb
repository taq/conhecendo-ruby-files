begin
  number = 1
  string = "hi"
  number + string
rescue => e
  puts "An error of type #{e.class} occurred: #{e}"
end
