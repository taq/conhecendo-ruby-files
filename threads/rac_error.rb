# Ractor que executa com sucesso
ractor_ok = Ractor.new do
  sleep 0.1
  42
end

puts "Resultado: #{ractor_ok.value}" # 42

# Ractor que lança exceção
ractor_erro = Ractor.new do
  sleep 0.1
  raise "Algo deu errado!"
end

begin
  ractor_erro.value
rescue => e
  puts "Capturei erro do Ractor: #{e.message}"
end
