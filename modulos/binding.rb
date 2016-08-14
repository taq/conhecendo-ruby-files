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

  def ligar
    Automovel.instance_method(:ligar).bind(self).call
  end
end

Carro.new.ligar
