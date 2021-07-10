before =  Symbol.all_symbols.size

100_000.times do |i|
  "sym#{i}".to_sym
end

puts Symbol.all_symbols.size

GC.start

puts Symbol.all_symbols.size
