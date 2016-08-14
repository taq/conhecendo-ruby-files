class Teste
  def metodo(parametro1)
    puts parametro1
  end
end

class NovoTeste < Teste
  def metodo(parametro1, parametro2)
    super(parametro1)
    puts parametro2
  end
end

t1 = Teste.new
t2 = NovoTeste.new
t1.metodo(1)
t2.metodo(2,3)
