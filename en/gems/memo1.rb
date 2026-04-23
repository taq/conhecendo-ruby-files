require 'benchmark'

def fib(number)
  return number if number < 2
  fib(number - 1) + fib(number - 2)
end

puts Benchmark.measure { puts fib(ARGV[0].to_i) }
