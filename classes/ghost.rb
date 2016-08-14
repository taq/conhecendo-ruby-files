class Teste
  def method_missing(meth)
    puts "Não sei o que fazer com a sua requisição: #{meth}"
  end
end

t = Teste.new
t.teste
