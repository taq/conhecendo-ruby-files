nome = "taq"
ractor = Ractor.new do
  # Vai dar erro! Não pode acessar variáveis externas
  nome # para funcionar, use "taq" diretamente
end

ractor.join
