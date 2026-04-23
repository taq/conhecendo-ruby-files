module Brazilian
  class Person
    def favorite_food
      "feijoada"
    end
  end
end

module Italian
  class Person
    def favorite_food
      "pizza"
    end
  end
end

person1 = Brazilian::Person.new
person2 = Italian::Person.new

puts person1.favorite_food
puts person2.favorite_food
