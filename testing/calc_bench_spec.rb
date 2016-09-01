require "minitest/autorun"
require "minitest/benchmark"
require_relative "calc"

describe "Calculadora Benchmark" do
  before do
    @calculadora = Calculadora.new   
  end

  bench_performance_constant "primeiro algoritmo", 0.001 do |n|
    100.times do |v|
      @calculadora.soma(n, v)
    end
  end

  bench_performance_constant "segundo algoritmo", 0.001 do |n|
    100.times do |v|
      @calculadora.soma(v, n)
    end
  end
end
