require "benchmark"
require "parallel"

Benchmark.bm do |bm|
  bm.report("in_threads") do
    Parallel.map 1..20, in_threads: 4 do |nr|
      5.times { |t| sleep 0.5 }
    end
  end

  bm.report("in_processes") do
    Parallel.map 1..20, in_processes: 4 do |nr|
      5.times { |t| sleep 0.5 }
    end
  end

  bm.report("using threads") do
    threads = []
    (1..20).each do |nr|
      threads << Thread.new do
        5.times { |t| sleep 0.5 }
      end
    end
    threads.each(&:join)
  end      
end   
