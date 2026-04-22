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

class Car
  alias to_s_old to_s

  def to_s
    "This is a new way to show this: #{to_s_old}"
  end
end

car = Car.new(:chevrolet, :corsa, :black, 50)
puts car
puts car.to_s_old
