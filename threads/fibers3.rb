def create_fib
  x, y = 0, 1
  lambda do
    t, x, y = y, y, x + y
    return t
  end
end

proc = create_fib
10.times { puts proc.call }
