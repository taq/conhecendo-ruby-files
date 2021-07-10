require 'benchmark'

Benchmark.bm do |bm|
  bm.report('alocando strings') do
    1_000_000.times { s = "alocando!" }
  end
end
