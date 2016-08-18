puts Time.now
res = "Quem terminou primeiro? "
threads = []

(1..20).each do |nr|
  threads << Thread.new do
    5.times { |t| sleep rand; print "'#{nr}/#{t}' " }
    puts "acabei com #{nr} "
    res += "#{nr} "
  end
end
threads.each(&:join)

puts res
puts Time.now
