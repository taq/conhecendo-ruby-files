require "benchmark"
require "parallel"

time = Benchmark.measure do
  res = "Who finished first? "

  Parallel.map 1..20, in_threads: 4 do |nr|
    puts "Done with #{nr} "
    res += "#{nr} "
  end

  puts res
end

puts time
