require 'benchmark'

threads = []

time = Benchmark.measure do
  res = 'Quem terminou primeiro? '

  (1..20).each do |nr|
    threads << Thread.new do
      puts "acabei com #{nr} "
      res += "#{nr} "
    end
  end

  threads.each(&:join)
  puts res
end

puts time
