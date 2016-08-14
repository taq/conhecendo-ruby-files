module AbstractInterface
  class NotImplementedError < StandardError
    def initialize(*methods)
      super "You must implement the following methods: #{methods.join(', ')}"
    end
  end

  def AbstractInterface.check_methods(klass, other, methods)
    return if other.class == Module

    TracePoint.new(:end) do |tp|
      return if tp.self != other || methods.nil?
      missing = methods.select { |method| !other.instance_methods.include?(method) }
      raise NotImplementedError.new(missing) if missing.any?
    end.enable
  end

  module ClassMethods
    def abstract_method(*args)
      return @abstract_method if !args
      @abstract_method ||= []
      @abstract_method.push(*args)
    end

    def included(other)
      AbstractInterface.check_methods(self, other, @abstract_method)
    end

    def check_methods(klass, other, methods)
      AbstractInterface.check_methods(klass, other, methods)
    end
  end

  def self.included(other)
    check_methods(self, other, @abstract_method)
    other.extend ClassMethods
  end
end

module FooBarInterface
  include AbstractInterface
  abstract_method :foo, :bar
end

module BazInterface
  include AbstractInterface
  abstract_method :baz
end

class Test
  include FooBarInterface
  include BazInterface

  def foo
    puts "foo"
  end

  def bar
    puts "bar"
  end

  def baz
    puts "baz"
  end
end

t = Test.new
t.foo
t.bar
t.baz
