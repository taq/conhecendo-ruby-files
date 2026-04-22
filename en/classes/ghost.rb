class Test
  def method_missing(meth)
    puts "I don't know what to do with your request: #{meth}"
  end
end

t = Test.new
t.test
