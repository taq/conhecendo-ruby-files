class Test
  def test(qty)
    qty.times { puts "test!" }
  end
end

t = Test.new
m = t.method(:test)
p m
m.call(3)
p m.to_proc
