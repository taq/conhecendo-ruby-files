module Automovel
  def ligar
    puts "ligando automóvel"
  end
end

module Radio
  def ligar
    puts "ligando rádio"
  end
end

class Carro 
  include Automovel
  include Radio
end

c = Carro.new
c.ligar
