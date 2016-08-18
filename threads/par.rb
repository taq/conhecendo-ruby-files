require "parallel"

puts Time.now
res = "Quem terminou primeiro? "

Parallel.map 1..20, in_threads: 4 do |nr|
  5.times { |t| sleep rand; print "'#{nr}/#{t}' " }
  puts "acabei com #{nr} "
  res += "#{nr} "
end

puts res
puts Time.now
