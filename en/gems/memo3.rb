require 'benchmark'
require 'memoize'
include Memoize

def fib(number)
  return number if number < 2
  fib(number - 1) + fib(number - 2)
end
memoize(:fib, 'memo.cache')

puts Benchmark.measure { puts fib(ARGV[0].to_i) }
