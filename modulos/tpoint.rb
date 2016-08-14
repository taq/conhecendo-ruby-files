TracePoint.new(:class,:end,:call) do |tp|
  puts "Disparado por #{tp.self} no arquivo #{tp.path} na linha #{tp.lineno}"
end.enable

module Paulista
  class Pessoa
  end
end
p = Paulista::Pessoa.new
