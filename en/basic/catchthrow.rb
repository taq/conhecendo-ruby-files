def get_input
  puts "Type something (a number terminates):"
  resp = gets

  throw :end_of_response, resp if resp.chomp.match?(/^\d+$/)

  resp
end

num = catch(:end_of_response) do
  while true
    get_input
  end
end

puts "Terminated with: #{num}"
