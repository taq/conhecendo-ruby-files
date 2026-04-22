module Automobile
  def turn_on
    puts "Turning on automobile #{@brand}"
  end
end

module Radio
  def turn_on
    puts "Turning on radio #{@brand}"
  end
end

class Car
  include Automobile
  include Radio

  def initialize
    @brand = :vw
  end

  def turn_on
    Automobile.instance_method(:turn_on).bind(self).call
    super
  end
end

Car.new.turn_on
