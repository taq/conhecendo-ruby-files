def fact(n, ac = 1)
  return ac if n <= 1

  fact(n - 1, n * ac)
end

[4, 40_000].each do |num|
  puts fact(num)
end
