class Test
  def meth(param1)
    puts param1
  end
end

class NewTest < Test
  def meth(param1, param2)
    super(param1)
    puts param2
  end
end

t1 = Test.new
t2 = NewTest.new
t1.meth(1)
t2.meth(2,3)
