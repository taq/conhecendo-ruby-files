require 'csv'
require 'benchmark'

file = ARGV[0]
puts "Processando arquivo #{file} ..."

Benchmark.bm do |bm|
  bm.report 'parse' do
    CSV.parse(File.read(file))
  end
  bm.report 'foreach' do
    CSV.foreach(file) do |row|
    end
  end
end
