def testando_lambda
  l = lambda { return "Oi!" }
  l.call
  "Imprima isso."
end

puts testando_lambda
