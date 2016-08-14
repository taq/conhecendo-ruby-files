class Teste
  def self.method_added(meth)
    puts "Adicionado o método #{meth}"
  end

  def self.method_removed(meth)
    puts "Removido o método #{meth}"
  end
end

t = Teste.new
t.class.send(:define_method,"teste") { puts "teste!" }
t.teste
t.class.send(:remove_method,:teste)
t.teste
