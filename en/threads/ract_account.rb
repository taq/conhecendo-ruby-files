def create_bank_account(name, start_balance, port)
  Ractor.new(name, start_balance, port) do |name, balance, port|
    loop do
      puts "Waiting in #{name} ..."
      msg = Ractor.receive # aqui pega do default_port do Ractor
      puts "-> Received #{msg[:operation]} in #{name}!"

      case msg[:operation]
      when :deposit
        balance += msg[:valor]
        port << { ok: true, balance: balance, account: name }
      when :withdraw
        if balance >= msg[:valor]
          balance -= msg[:valor]
          port << { ok: true, balance: balance, account: name }
        else
          port << { ok: false, erro: "Insufficient balance", account: name }
        end
      when :query
        port << { ok: true, balance: balance, account: name }
      when :stop
        puts "  Closing #{name}'s account..."
        break
      end
      puts "Processed in #{name}, returning to wait ..."
    end
  end
end

joao_answer, maria_response  = Ractor::Port.new, Ractor::Port.new
account_joao  = create_bank_account("João", 1_000, joao_answer)
account_maria = create_bank_account("Maria", 500, maria_response)

puts "Depositing $ 200 in João's account"
account_joao << { operation: :deposit, valor: 200 }
puts "   #{joao_answer.receive}\n\n"

account_joao << { operation: :query }
puts "João's balance: $ #{joao_answer.receive[:balance]}\n\n"

puts "Trying to withdraw $ 1000 from Maria (will fail)"
account_maria << { operation: :withdraw, valor: 1000 }
result = maria_response.receive
puts result[:ok] ? "Balance $ #{result[:balance]}\n\n" : "#{result[:erro]}\n\n"

account_maria << { operation: :withdraw, valor: 100 }
puts "Result of withdrawing $ 100 from Maria: #{maria_response.receive}\n\n"

account_maria << { operation: :query }
puts "Maria's final balance: $ #{maria_response.receive[:balance]}\n\n"

account_joao  << { operation: :stop }
account_maria << { operation: :stop }

account_joao.join
account_maria.join
