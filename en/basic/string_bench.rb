require "benchmark"

Benchmark.bm do |bm|
  bm.report("allocating strings") do
    1_000_000.times { s = "allocating!" }
  end
end
