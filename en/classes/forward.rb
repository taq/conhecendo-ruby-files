require 'forwardable'

class Driver
  def fastening_seatbelt
    puts "Fastening seatbelt ..."
  end
end

class Car
  extend Forwardable

  def initialize
    @driver = Driver.new
  end

  def_delegators :@driver, :fastening_seatbelt
end

car= Car.new
car.fastening_seatbelt
