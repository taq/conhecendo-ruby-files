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

  def initialize_copy(original)
    puts "created new object #{self.object_id} duplicated from #{original.object_id}"
    @created = Time.now
  end

  def to_s
    "Brand:#{@brand} Model:#{@model} Color:#{@color} Tank:#{@tank}"
  end
end

car = Car.new(:chevrolet, :corsa, :black, 50)
puts car.created
puts car.object_id
sleep 1

other_car = car.dup
puts other_car.created
puts other_car.object_id
