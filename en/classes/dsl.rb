# typed: false
# frozen_string_literal: true

class Vehicle
  attr_accessor :color, :brand, :model

  def to_s
    "Color: #{@color} Brand: #{@brand} Model: #{@model}"
  end
end

class Car < Vehicle
end

class Bike < Vehicle
  attr_accessor :derailler

  def to_s
    "#{super} Derailler: #{@derailler}"
  end
end

module Configurator
  class << self
    attr_accessor :object

    def config(object, &bloco)
      self.object = object
      instance_eval(&bloco)

      self.object
    end

    def method_missing(name, *values)
      self.object.send("#{name}=", *values)
    end
  end
end

# utilizando a DSL daqui para baixo

car = Configurator.config(Car.new) do
  color :blue
  brand :fiat
  model :pulse
end

bike = Configurator.config(Bike.new) do
  color :black
  brand :specialized
  model :rockhopper_pro
  derailler :slx
end

puts car
puts bike
