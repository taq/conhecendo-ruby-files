class Car
  attr_reader :brand, :model, :tank
  attr_accessor :color

  def initialize(brand, model, color, tank)
    @brand  = brand
    @modelo = model
    @color  = color
    @tank   = tank

    binding.irb
  end
end

car = Car.new(:fiat, :pulse, :white, 40)
p car
