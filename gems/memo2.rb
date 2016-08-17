require "memoize"
include Memoize

def fib(numero)
  return numero if numero < 2
  fib(numero - 1) + fib(numero - 2)
end
memoize(:fib)

puts Time.now
puts fib(ARGV[0].to_i)
puts Time.now
