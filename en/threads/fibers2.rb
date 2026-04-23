fib = Fiber.new do
  x, y = 0, 1

  loop do
    # send the y value to resume
    # puts 'Going to resume'
    Fiber.yield y

    # come back here after resume
    # puts 'Back from resume'
    x, y = y, x + y
  end
end

10.times { puts fib.resume }
