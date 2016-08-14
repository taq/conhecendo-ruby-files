class Teste
  def apenas_uma_vez
    def self.apenas_uma_vez
      raise Exception, "Esse metodo se destruiu!"
    end
    puts "Vou rodar apenas essa vez hein?"
  end
end

teste = Teste.new
teste.apenas_uma_vez
teste.apenas_uma_vez
