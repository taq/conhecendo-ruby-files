require 'benchmark'

a = (1..1_000_000).to_a.shuffle

Benchmark.bm do |x|
  x.report("min:") { 1000.times { a.min } }
  x.report("max:") { 1000.times { a.max } }
end
