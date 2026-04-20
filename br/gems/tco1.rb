def fact(n)
  return 1 if n <= 1

  n * fact(n-1)
end

[4, 40_000].each do |num|
  puts fact(num)
end
