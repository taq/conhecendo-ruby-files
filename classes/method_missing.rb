class Teste
  def method_missing(method_name, value = nil)
    sanitized = method_name.to_s.split("=").first

    if method_name =~ /=$/
      self.class.send(:define_method, method_name) { |val| instance_variable_set("@#{sanitized}", val) }
      self.send(method_name, value)
    else
      self.class.send(:define_method, sanitized) { instance_variable_get("@#{sanitized}") }
      self.send(method_name)
    end
  end
end

t = Teste.new
t.oi = "oi, mundo!"
puts t.oi

puts t.hello
t.hello = "hello, world!"
puts t.hello
