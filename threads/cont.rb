require "continuation"

def cria_continuation
  puts "Criando a continuation e retornando ..."
  callcc { |obj| return obj }
  puts "Ei, olha eu aqui de volta na continuation!"
end

puts "Vou criar a continuation."
cont = cria_continuation()
puts "Verificando se existe ..."

if cont
  puts "Criada, vamos voltar para ela?"
  cont.call
else
  puts "Agora vamos embora."
end

puts "Terminei, tchau."
