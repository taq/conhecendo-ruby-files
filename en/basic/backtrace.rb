number1 = 1
number2 = "dois"

begin
  puts number1 + number2
rescue StandardError => e
  puts "Ooops, problems here (#{e.class}), will try again."
  puts e.backtrace

  number2 = 2
  retry
end
