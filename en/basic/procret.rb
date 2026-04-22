def testing_proc
  p = Proc.new { return "Boom!" }
  p.call
  "Never print this."
end

puts testing_proc
