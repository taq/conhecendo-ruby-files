nome = "taq"
ractor = Ractor.new do
  Ractor.yield nome # para funcionar, troquem nome para "taq"
end

puts "o nome é #{ractor.take}"
