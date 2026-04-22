class SteeringWheel
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Car
  attr_reader :steering_wheel

  def initialize(steering_wheel)
    @steering_wheel = steering_wheel
  end
end

steering_wheel = SteeringWheel.new(:black)
Car   = Car.new(steering_wheel)

puts Car.steering_wheel.color if Car && Car.steering_wheel && Car.steering_wheel.color
#puts Car.try(:steering_wheel).try(:color)
puts Car&.steering_wheel&.color
