def testando_proc
  p = Proc.new { return "Bum!" }
  p.call
  "Nunca imprime isso."
end

puts testando_proc
