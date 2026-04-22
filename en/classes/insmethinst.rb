class Car
  attr_reader :brand, :model, :tank
  attr_accessor :color

  def initialize(brand, model, color, tank)
    @brand = brand
    @model = model
    @color = color
    @tank  = tank
  end

  def to_s
    "brand: #{@brand} model: #{@model} color: #{@color} tank: #{@tank}"
  end
end

corsa = Car.new(:chevrolet, :corsa, :black, 50)
gol   = Car.new(:volks, :gol, :blue, 42)

class << corsa
  def new_method
    puts "New method!"
  end
end

corsa.new_method
gol.new_method
