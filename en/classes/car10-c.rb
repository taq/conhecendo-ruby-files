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
    "brand:#{@brand} model:#{@model} color:#{@color} tank:#{@tank}"
  end
end

corsa = Car.new(:chevrolet, :corsa, :black, 50)
gol   = Car.new(:volks, :gol, :blue, 42)

corsa.singleton_class.send(:define_method, :multiply_tank) do |value|
  @tank * value
end

puts corsa.multiply_tank(2)
puts gol.multiply_tank(2)
