require "fiddle"

# load the shared lib
libcustomtime = Fiddle.dlopen("./libcustomtime.so")

# get a function reference
time = Fiddle::Function.new(libcustomtime["customtime"], [], Fiddle::TYPE_VOIDP)

# call function
puts time.call
