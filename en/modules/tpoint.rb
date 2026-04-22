TracePoint.new(:class,:end,:call) do |tp|
  puts "Fired by #{tp.self} in file #{tp.path} in line #{tp.lineno}"
end.enable

module Brazilian
  class Person
  end
end
p = Brazilian::Person.new
