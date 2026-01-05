def criar_conta_bancaria(nome, saldo_inicial, port)
  Ractor.new(nome, saldo_inicial, port) do |nome, saldo, port|
    loop do
      puts "Aguardando em #{nome} ..."
      msg = Ractor.receive # aqui pega do default_port do Ractor
      puts "-> Recebi #{msg[:operacao]} em #{nome}!"

      case msg[:operacao]
      when :deposito
        saldo += msg[:valor]
        port << { ok: true, saldo: saldo, conta: nome }
      when :saque
        if saldo >= msg[:valor]
          saldo -= msg[:valor]
          port << { ok: true, saldo: saldo, conta: nome }
        else
          port << { ok: false, erro: "Saldo insuficiente", conta: nome }
        end
      when :consulta
        port << { ok: true, saldo: saldo, conta: nome }
      when :stop
        puts "  Encerrando conta de #{nome}..."
        break
      end
      puts "Processado em #{nome}, retornando para aguardar ..."
    end
  end
end

resposta_joao, resposta_maria  = Ractor::Port.new, Ractor::Port.new
conta_joao  = criar_conta_bancaria("João", 1_000, resposta_joao)
conta_maria = criar_conta_bancaria("Maria", 500, resposta_maria)

puts "Depositando R$ 200 na conta de João"
conta_joao << { operacao: :deposito, valor: 200 }
puts "   #{resposta_joao.receive}\n\n"

conta_joao << { operacao: :consulta }
puts "Saldo de João: R$ #{resposta_joao.receive[:saldo]}\n\n"

puts "Tentando sacar R$ 1000 de Maria (vai falhar)"
conta_maria << { operacao: :saque, valor: 1000 }
resultado = resposta_maria.receive
puts resultado[:ok] ? "Saldo R$ #{resultado[:saldo]}\n\n" : "#{resultado[:erro]}\n\n"

conta_maria << { operacao: :saque, valor: 100 }
puts "Resultado de sacar R$ 100 de Maria: #{resposta_maria.receive}\n\n"

conta_maria << { operacao: :consulta }
puts "Saldo final de Maria: R$ #{resposta_maria.receive[:saldo]}\n\n"

conta_joao  << { operacao: :stop }
conta_maria << { operacao: :stop }

conta_joao.join
conta_maria.join
