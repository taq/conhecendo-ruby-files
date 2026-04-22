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
    "brand:#{@brand} model:#{@model} color:#{@color} tank:#{@tank}"
  end

  def self.qty
    @@qty
  end
end

class NewCar < Car
  def to_s
    "new brand:#{@brand} model:#{@model} color:#{@color} tank:#{@tank}"
  end
end

car1 = Car.new(:chevrolet, :corsa, :black, 50)
car2 = Car.new(:chevrolet, :corsa, :silver, 50)
new_car = NewCar.new(:volks, :gol, :blue, 42)

puts car1
puts car2
puts new_car
puts Car.qty
puts NewCar.qty
