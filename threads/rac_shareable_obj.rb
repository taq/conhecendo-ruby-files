# estrutura de dados complexa
config = {
  host: "localhost",
  port: 3000,
  options: ["verbose", "debug"]
}

# tornamos compartilhável (congela recursivamente)
config_shareable = Ractor.make_shareable(config)

# agora podemos passar para Ractors
ractor = Ractor.new(config_shareable) do |cfg|
  puts "Host: #{cfg[:host]}, Port: #{cfg[:port]}"
  puts "Options: #{cfg[:options].join(', ')}"
end

ractor.join
