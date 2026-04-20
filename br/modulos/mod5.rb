module Paulista
  class Pessoa
    def comida_preferida
      "pizza"
    end
  end
end

module Gaucho
  class Pessoa
    def comida_preferida
      "churrasco"
    end
  end
end

pessoa1 = Paulista::Pessoa.new
pessoa2 = Gaucho::Pessoa.new

puts pessoa1.comida_preferida
puts pessoa2.comida_preferida
