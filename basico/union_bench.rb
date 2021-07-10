require 'benchmark'

a1 = ["a", "b", "c"]
a2 = ["c", "d", "a"]
a3 = ["a", "a", "b", "b", "c", "c", "d", "e"]
a4 = ["a", "b", "d"]
nt = 10_000

Benchmark.bm do |bm|
  bm.report('com |') do
    nt.times { a1 | a2 }
  end
  bm.report('com union') do
    nt.times { a1.union a2 }
  end
  bm.report('com -') do
    nt.times { a3 - a4 }
  end
  bm.report('com difference') do
    nt.times { a3.difference a4 }
  end
  bm.report('com &') do
    nt.times { a1 & a2 }
  end
  bm.report('com intersection') do
    nt.times { a1.intersection a2 }
  end
end
