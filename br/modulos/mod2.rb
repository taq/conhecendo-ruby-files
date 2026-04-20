class Primata
  def come
    puts "Nham!"
  end

  def dorme
    puts "Zzzzzz..."
  end
end

class Humano < Primata
  def conecta_na_web
    puts "Login ... senha ..."
  end
end

module Ave
  def voa
    puts "Para o alto, e avante!"
  end
end

class Mutante < Humano
end

mutante = Mutante.new
mutante.extend(Ave)
mutante.come
mutante.dorme
mutante.conecta_na_web
mutante.voa

mutante2 = Mutante.new
mutante2.voa
