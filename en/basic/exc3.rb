begin
  number = 1
  string = "hi"
  number + string
rescue StandardError => e
  puts "An error of type #{e.class} occurred: #{e}"
ensure
  puts "Everything broke."
end

puts "End of program."
