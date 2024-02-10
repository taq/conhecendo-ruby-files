class Teste
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

t = Teste.new
t.oi = "oi, mundo!"
puts t.oi

puts t.hello
t.hello = "hello, world!"
puts t.hello
