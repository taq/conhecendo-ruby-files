require 'monitor'

class Counter2
  attr_reader :value

  def initialize
    @value = 0
  end

  def incr
    @value = value + 1
  end
end

c2 = Counter2.new
c2.extend(MonitorMixin)

t3 = Thread.new { 100_000.times { c2.synchronize { c2.incr } } }
t4 = Thread.new { 100_000.times { c2.synchronize { c2.incr } } }

t3.join
t4.join
puts c2.value
