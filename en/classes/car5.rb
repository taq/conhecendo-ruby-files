class Car
  attr_reader :brand, :model, :color, :tank
  attr_writer :color

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
corsa.color = :white
puts corsa
