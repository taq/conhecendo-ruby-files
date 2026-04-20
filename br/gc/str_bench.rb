require 'benchmark'

Benchmark.bm do |bm|
  bm.report('alocando strings com menos de 23 caracteres') do
    1_000_000.times { s = '*' * 10 }
  end

  bm.report('alocando strings com 23 caracteres') do
    1_000_000.times { s = '*' * 23 }
  end

  bm.report('alocando strings com 24 caracteres') do
    1_000_000.times { s = '*' * 24 }
  end

  bm.report('alocando strings com mais de 24 caracteres') do
    1_000_000.times { s = '*' * 100 }
  end
end
