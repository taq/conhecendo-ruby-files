# typed: false
# frozen_string_literal: true

require 'etc'
require 'benchmark'

times = Etc.nprocessors
num = 40

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

    # criamos um proc compartilhável (nova feature do Ruby 4.0!)
    fib_proc = Ractor.shareable_proc do |n|
      def fib(numero)
        return numero if numero < 2
        fib(numero - 1) + fib(numero - 2)
      end
      fib(n)
    end

    # criamos os Ractors com o proc compartilhável
    ractors = times.times.map do |seq|
      Ractor.new(num, seq, fib_proc) do |num, seq, proc|
        resultado = proc.call(num)
        puts "Sequência #{seq}: #{resultado}"
      end
    end

    # esperamos todos terminarem
    ractors.each(&:join)
  end
end
