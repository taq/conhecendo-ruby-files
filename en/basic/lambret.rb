def testing_lambda
  l = lambda { "Hi!" }
  l.call
  "Print this."
end

puts testing_lambda
