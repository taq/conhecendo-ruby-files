class Car
  def initialize(brand, model, color, tank)
    @brand = brand
    @model = model
    @color = color
    @tank  = tank
  end
end

corsa = Car.new(:chevrolet, :corsa, :black, 50)
p corsa
puts corsa
