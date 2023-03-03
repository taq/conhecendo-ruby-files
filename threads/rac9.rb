# typed: false
# frozen_string_literal: true

require 'etc'
require 'open-uri'
require 'benchmark'

times = Etc.nprocessors
num   = 40
puts "Executando #{times} vezes, calculando o #{num}o. número de Fibonacci ..."

def fib(numero)
  return numero if numero < 2

  fib(numero - 1) + fib(numero - 2)
end

Benchmark.bm do |bm|
  bm.report 'em sequência' do
    puts "\n"
    times.times do |seq|
      puts "Sequência #{seq}: #{fib(num)}"
    end
  end

  bm.report 'em paralelo' do
    puts "\n"
    4.times.map do |seq|
      Ractor.new(num, seq) do |num, seq|
        puts "Sequência #{seq}: #{fib(num)}"
      end
    end.each(&:take)
  end
end
