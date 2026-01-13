require "benchmark"
require "set" # para versões anteriores de 4.0.0

Benchmark.bm do |bm|
  array  = (1...1_000_000).to_a
  set    = array.to_set
  number = 750_000

  bm.report("array search") do
    array.include?(number) # percorre elementos até encontrar
  end

  bm.report("set search") do
    set.include?(number) # acesso direto, extremamente rápido
  end
end

Benchmark.bm do |bm|
  array = ["a", "b", "c", "a", "d", "b", "e"]

  bm.report("array uniq") do
    p array.uniq
  end

  bm.report("set uniq") do
    p Set[*array].to_a
  end
end
