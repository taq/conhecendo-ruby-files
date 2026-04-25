require "minitest/autorun"
require "minitest/benchmark"
require_relative "calc"

describe "Calculator Benchmark" do
  before do
    @calculator = Calculator.new
  end

  bench_performance_constant "first algorithm" do |n|
    100.times do |v|
      @calculator.add(n, v)
    end
  end

  bench_performance_constant "second algorithm", 0.001 do |n|
    100.times do |v|
      @calculator.add(v, n)
    end
  end
end
