require 'monitor'

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

c1 = Contador1.new

t1 = Thread.new { 100_000.times { c1.incrementa } }
t2 = Thread.new { 100_000.times { c1.incrementa } }

t1.join
t2.join
puts c1.valor
