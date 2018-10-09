class Account
    def initialize(balance)
        @balance = balance.to_f
    end

    def setBalance(newBalance)
        @balance = newBalance.to_f
    end

    def getBalance()
        @balance
    end
    
    def toWithdraw(value)
        case 
        when value == 0.0
            setMessage('Valor inválido. Digite um valor maior que zero.')
            puts getMessage()
        when value > 700.0
            setMessage('Limite máximo por saque é de R$ 700')
            puts getMessage()
        when value <= @balance
            setBalance(@balance - value)
            setMessage('Saque com sucesso.')
            puts getMessage()
        when value > @balance
            setMessage('Saldo insuficiente para saque :(')
            puts getMessage()
        else 
            setMessage('Valor inválido')
            puts getMessage()
        end
    end

    def setMessage(newMessage)
        @message = newMessage
    end
    def getMessage()
        @message
    end

end

# puts 'Bem vindo a Caixa'

# puts 'Informe seu saldo inicial:'
# account = Account.new(STDIN.gets.to_f)

# puts 'Informe o valor do saque:'
# account.toWithdraw(STDIN.gets.to_f)