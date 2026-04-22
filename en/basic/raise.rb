number1 = 1
number2 = 1

begin
  puts number1 + number2
  raise StandardError, "expecting it to be 3" if number1 + number2 != 3
rescue StandardError => e
  puts "Ooops, problems here (#{e.class}), will try again."
end
