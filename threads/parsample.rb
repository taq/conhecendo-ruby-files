require 'benchmark'
require 'parallel'

time = Benchmark.measure do
  numbers = Parallel.map 1..20, progress: 'Processando ...' do |num|
    sleep 1
    num * 5
  end
  p numbers
end

puts time

