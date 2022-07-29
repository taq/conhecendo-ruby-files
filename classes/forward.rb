require 'forwardable'

class Motorista
  def coloca_cinto
    puts "Colocando cinto ..."
  end
end

class Carro
  extend Forwardable

  def initialize
    @motorista = Motorista.new
  end

  def_delegators :@motorista, :coloca_cinto
end

carro = Carro.new
carro.coloca_cinto
