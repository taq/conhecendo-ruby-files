string = 'Oi, mundo!'
ObjectSpace.define_finalizer(string, ->(id) { puts "Estou terminando o objeto #{id}" })
