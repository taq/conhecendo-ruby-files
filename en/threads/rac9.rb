# typed: false
# frozen_string_literal: true

require "etc"
require "benchmark"

times = Etc.nprocessors
num = 40

puts "Running #{times} times, calculating the #{num}th Fibonacci number ..."

def fib(number)
  return number if number < 2
  fib(number - 1) + fib(number - 2)
end

Benchmark.bm do |bm|
  bm.report "sequential" do
    puts "\n"
    times.times do |seq|
      puts "Sequence #{seq}: #{fib(num)}"
    end
  end

  bm.report "parallel" do
    puts "\n"

    # creating a shared Proc (new Ruby 4.0 feature!)
    fib_proc = Ractor.shareable_proc do |n|
      def fib(number)
        return number if number < 2
        fib(number - 1) + fib(number - 2)
      end
      fib(n)
    end

    # creating Ractors with the shared Proc
    ractors = times.times.map do |seq|
      Ractor.new(num, seq, fib_proc) do |num, seq, proc|
        resultado = proc.call(num)
        puts "Sequence #{seq}: #{resultado}"
      end
    end

    # esperamos todos terminarem
    ractors.each(&:join)
  end
end
