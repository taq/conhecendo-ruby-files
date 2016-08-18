require "benchmark"
require "parallel"

Benchmark.bm do |bm|
  bm.report do
    Parallel.map 1..20, in_threads: 4 do |nr|
      5.times {|t| sleep rand; }
    end
  end
end
