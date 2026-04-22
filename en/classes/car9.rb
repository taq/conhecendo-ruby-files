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
end

corsa = Car.new(:chevrolet, :corsa, :black, 50)
gol   = Car.new(:volks, :gol, :azul, 42)

Car.send(:define_method, :multiply_tank) do |value|
  @tank * value
end

puts corsa.multiply_tank(2)
puts gol.multiply_tank(2)
