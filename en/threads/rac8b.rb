# port to receive result
result_port = Ractor::Port.new

ractor = Ractor.new(result_port) do |p|
  # Receives from default_port
  obj = Ractor.receive
  obj << "world"

  # send result
  p << obj
end

obj = ["hello"]

# moving object to the Ractor default_port
ractor.send(obj, move: true)

# receiving the modified result
modified = result_port.receive
puts modified.join(" ")  # "hello world"

# obj is now inaccessible (we moved it!)
puts obj.join(" ")

ractor.join
