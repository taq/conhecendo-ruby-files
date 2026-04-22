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
    "brand: #{@brand} model: #{@model} color: #{@color} tank: #{@tank}"
  end
end

class NewCar < Car
  def to_s
    "New car: #{super}"
  end
end

car     = Car.new(:chevrolet, :corsa, :black, 50)
new_car = NewCar.new(:volks, :gol, :blue, 42)

puts car
puts new_car
