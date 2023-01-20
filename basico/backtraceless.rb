require 'benchmark'

class CustomException < StandardError
end

Benchmark.bm do |bm|
  bm.report('com backtrace') do
    100_000.times do
      raise CustomException, 'Deu erro aqui'
    rescue
    end
  end

  bm.report('sem backtrace') do
    100_000.times do
      raise CustomException, 'Deu erro aqui', []
    rescue
    end
  end
end
