# complex data structure
config = {
  host: "localhost",
  port: 3000,
  options: ["verbose", "debug"]
}

# we make it shareable (recursive freezing)
config_shareable = Ractor.make_shareable(config)

# now we can send it to Ractors
ractor = Ractor.new(config_shareable) do |cfg|
  puts "Host: #{cfg[:host]}, Port: #{cfg[:port]}"
  puts "Options: #{cfg[:options].join(', ')}"
end

ractor.join
