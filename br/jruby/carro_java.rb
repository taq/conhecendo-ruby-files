# carro.rb
require "java"
java_import("Carro")

carro = Carro.new("VW", "prata", "polo", 40)
puts carro

class Mach5 < Carro
  attr_reader :tanque_oxigenio

  def initialize(marca, cor, modelo, tanque, tanque_oxigenio)
    super(marca, cor, modelo, tanque)
    @tanque_oxigenio = tanque_oxigenio
  end

  def to_s
    "#{super}\nTanque oxigenio: #{@tanque_oxigenio}"
  end
end

puts "*" * 25
mach5 = Mach5.new("PopsRacer", "branco", "Mach5", 50, 10)
puts mach5
