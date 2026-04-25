require 'benchmark'

Benchmark.bm do |bm|
  bm.report('allocating strings with less than 23 chars') do
    1_000_000.times { s = '*' * 10 }
  end

  bm.report('allocating strings with 23 chars') do
    1_000_000.times { s = '*' * 23 }
  end

  bm.report('allocating strings with 24 chars') do
    1_000_000.times { s = '*' * 24 }
  end

  bm.report('allocating strings with more than 24 chars') do
    1_000_000.times { s = '*' * 100 }
  end
end
