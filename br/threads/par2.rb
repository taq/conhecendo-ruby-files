require 'benchmark'
require 'parallel'

time = Benchmark.measure do
  res = 'Quem terminou primeiro? '

  Parallel.map 1..20, in_processes: 4 do |nr|
    puts "Acabei com #{nr} "
    res += "#{nr} "
  end

  puts res
end

puts time
