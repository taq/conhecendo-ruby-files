class Car
  attr_reader :brand, :model, :tank
  attr_accessor :color
  @@qty = 0

  def initialize(brand, model, color, tank)
    @brand  = brand
    @model  = model
    @color  = color
    @tank   = tank
    @@qty  += 1
  end

  def to_s
    "Marca:#{@brand} Modelo:#{@model} Cor:#{@color} Tanque:#{@tank}"
  end

  def self.qty
    @@qty
  end
end

corsa   = Car.new(:chevrolet, :corsa, :black, 50)
gol     = Car.new(:volks, :gol, :blue, 42)
ferrari = Car.new(:ferrari, :enzo, :red, 70)
puts Car.qty
