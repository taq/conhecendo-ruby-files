require 'monitor'

class Counter1
  attr_reader :value
  include MonitorMixin

  def initialize
    @value = 0
    super
  end

  def incr
    synchronize do
      @value = value + 1
    end
  end
end

c1 = Counter1.new

t1 = Thread.new { 100_000.times { c1.incr } }
t2 = Thread.new { 100_000.times { c1.incr } }

t1.join
t2.join
puts c1.value
