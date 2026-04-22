string = "Hi, world!"
ObjectSpace.define_finalizer(string, ->(id) { puts "Finishing object #{id}" })
