def testando_lambda
  l = lambda { return "Oi!" }
  l.call
  "Imprime isso."
end

puts testando_lambda
