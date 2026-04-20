module Automovel
  def ligar
    puts "Ligando automóvel #{@marca}"
  end
end

module Radio
  def ligar
    puts "Ligando rádio #{@marca}"
  end
end

class Carro
  include Automovel
  include Radio

  def initialize
    @marca = :vw
  end

  def ligar
    Automovel.instance_method(:ligar).bind(self).call
    super
  end
end

Carro.new.ligar
