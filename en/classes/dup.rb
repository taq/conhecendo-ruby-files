class Car
  attr_reader :brand, :model, :tank, :created
  attr_accessor :color

  def initialize(brand, model, color, tank)
    @brand   = brand
    @model   = model
    @color   = color
    @tank    = tank
    @created = Time.now
  end

  def to_s
    "brand:#{@brand} model:#{@model} color:#{@color} tank:#{@tank}"
  end
end

car = Car.new(:chevrolet, :corsa, :black, 50)
puts car.created
sleep 1

other_car = car.dup
puts other_car.created
