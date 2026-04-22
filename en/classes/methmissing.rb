class Test
  def method_missing(meth, value = nil)
    sanitized = meth.to_s.split("=").first

    if meth =~ /=$/
      self.class.send(:define_method, meth) { |it| instance_variable_set("@#{sanitized}", it) }
      self.send(meth, value)
    else
      self.class.send(:define_method, sanitized) { instance_variable_get("@#{sanitized}") }
      self.send(meth)
    end
  end
end

t = Test.new
t.hi = "hi, world!"
puts t.hi

puts t.hello
t.hello = "hello, world!"
puts t.hello
