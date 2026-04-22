require 'benchmark'

class CustomException < StandardError
end

Benchmark.bm do |bm|
  bm.report("with backtrace") do
    100_000.times do
      raise CustomException, "Error here"
    rescue
    end
  end

  bm.report("without backtrace") do
    100_000.times do
      raise CustomException, "Error here", []
    rescue
    end
  end
end
