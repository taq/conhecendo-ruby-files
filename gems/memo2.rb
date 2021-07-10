require 'benchmark'
require 'memoize'
include Memoize

def fib(numero)
  return numero if numero < 2
  fib(numero - 1) + fib(numero - 2)
end
memoize(:fib)

puts Benchmark.measure { puts fib(ARGV[0].to_i) }
