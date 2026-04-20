require "fiddle"

# carrega a lib compartilhada
libhora = Fiddle.dlopen("./libhora.so")

# pega uma referência para a função
hora = Fiddle::Function.new(libhora["hora"], [], Fiddle::TYPE_VOIDP)

# chama a função
puts hora.call
