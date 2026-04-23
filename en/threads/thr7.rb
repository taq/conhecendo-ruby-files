require "monitor"

class Contador1
  attr_reader :valor
  include MonitorMixin

  def initialize
    @valor = 0
    super
  end

  def incrementa
    synchronize do
      @valor = valor + 1
    end
  end
end

class Contador2
  attr_reader :valor

  def initialize
    @valor = 0
  end

  def incrementa
    @valor = valor + 1
  end
end

c1 = Contador1.new
c2 = Contador2.new
c2.extend(MonitorMixin)

t1 = Thread.new { 100_000.times { c1.incrementa } }
t2 = Thread.new { 100_000.times { c1.incrementa } }

t1.join
t2.join
puts c1.valor

t3 = Thread.new { 100_000.times { c2.synchronize { c2.incrementa } } }
t4 = Thread.new { 100_000.times { c2.synchronize { c2.incrementa } } }

t3.join
t4.join
puts c2.valor
