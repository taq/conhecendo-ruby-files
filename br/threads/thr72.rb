require 'monitor'

class Contador2
  attr_reader :valor

  def initialize
    @valor = 0
  end

  def incrementa
    @valor = valor + 1
  end
end

c2 = Contador2.new
c2.extend(MonitorMixin)

t3 = Thread.new { 100_000.times { c2.synchronize { c2.incrementa } } }
t4 = Thread.new { 100_000.times { c2.synchronize { c2.incrementa } } }

t3.join
t4.join
puts c2.valor
