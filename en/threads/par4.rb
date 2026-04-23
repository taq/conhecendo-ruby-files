require "benchmark"

threads = []

time = Benchmark.measure do
  res = "Who finished first? "

  (1..20).each do |nr|
    threads << Thread.new do
      puts "Done with #{nr} "
      res += "#{nr} "
    end
  end

  threads.each(&:join)
  puts res
end

puts time
