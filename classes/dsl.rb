# typed: false
# frozen_string_literal: true

class Veiculo
  attr_accessor :cor, :marca, :modelo

  def to_s
    "Cor: #{@cor} Marca: #{@marca} Modelo: #{@modelo}"
  end
end

class Carro < Veiculo
end

class Bike < Veiculo
  attr_accessor :cambio

  def to_s
    "#{super} Câmbio: #{@cambio}"
  end
end

module Configurador
  class << self
    attr_accessor :objeto

    def configurar(objeto, &bloco)
      self.objeto = objeto
      instance_eval(&bloco)

      self.objeto
    end

    def method_missing(name, *values)
      self.objeto.send("#{name}=", *values)
    end
  end
end

# utilizando a DSL daqui para baixo

carro = Configurador.configurar(Carro.new) do
  cor    :azul
  marca  :fiat
  modelo :pulse
end

bike = Configurador.configurar(Bike.new) do
  cor    :preta
  marca  :specialized
  modelo :rockhopper_pro
  cambio :slx
end

puts carro
puts bike
