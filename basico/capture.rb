class Teste
  def teste(qtde)
    qtde.times { puts "teste!" }
  end
end

t = Teste.new
m = t.method(:teste)
p m
m.call(3)
p m.to_proc
