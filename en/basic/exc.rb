begin
  number = 1
  string = "hi"
  number + string
rescue StandardError => e
  puts "An error occurred: #{e}"
end
