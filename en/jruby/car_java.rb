# carro.rb
require "java"
java_import("Car")

carro = Car.new("VW", "silver", "polo", 40)
puts carro

class Mach5 < Car
  attr_reader :oxygen_tank

  def initialize(brand, color, model, tank, oxygen_tank)
    super(brand, color, model, tank)
    @oxygen_tank = oxygen_tank
  end

  def to_s
    "#{super}\nOxygen tank: #{@oxygen_tank}"
  end
end

puts "*" * 25
mach5 = Mach5.new("Pops Racer", "white", "Mach5", 50, 10)
puts mach5
