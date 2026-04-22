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
    "Brand: #{@brand} Model: #{@model} Color: #{@color} Tank: #{@tank}"
  end

  def gallons
    @tank / 3.785
  end
end

corsa = Car.new(:chevrolet, :corsa, :black, 50)
corsa.color = :white
puts corsa.gallons
