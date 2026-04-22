class Primate
  def eat
    puts "Yummy!"
  end

  def sleep
    puts "Zzzzzz..."
  end
end

class Human < Primate
  def sign_in
    puts "Login ... password ..."
  end
end

module Bird
  def fly
    puts "Up, up and away!"
  end
end

class Mutant < Human
  include Bird
end

mutant = Mutant.new
mutant.eat
mutant.sleep
mutant.sign_in
mutant.fly
