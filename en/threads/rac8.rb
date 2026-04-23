# Port to receive result
result_port = Ractor::Port.new

ractor = Ractor.new(result_port) do |p|
  # receives from default_port
  obj = Ractor.receive
  obj << "world"

  # Envia resultado
  p << obj
end

obj = ["hello"]

# sending the object to Ractor default_port
ractor << obj

# received the modified result
modified = result_port.receive
puts modified.join(" ")  # "hello world"

# obj still accessible here (copied, not moved)
puts obj.join(" ")  # "hello" (original not modified)

ractor.join
