require_relative '../../src/conta.rb'

  Dado("que eu tenho uma conta com {int} reais") do |saldo|
    @account = Account.new(saldo)
  end

  Quando("faço um saque no valor de {int} reais") do |valorSaque|
    @account.toWithdraw(valorSaque)
  end

  Então("{int} reais será meu saldo final") do |saldoFinal|
    @account.getBalance() == saldoFinal
  end

  Então("devo ver a mensagem {string}") do |mensagem|
    expect(@account.getMessage()).to eql mensagem
  end
  