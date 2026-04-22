module Automobile
  def turn_on
    puts "turning on automobile"
  end
end

module Radio
  def turn_on
    puts "turning on radio"
  end
end

class Car
  include Automobile
  include Radio
end

  c = Car.new
c.turn_on
