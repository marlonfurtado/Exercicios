class Conta

  attr_accessor :nome
  attr_accessor :pin
  attr_accessor :saldo
  attr_accessor :senha
  attr_accessor :documento
  attr_accessor :tipoConta

  def initialize(nome, saldo, pin, senha, documento, tipoConta)
    @nome = nome
    @saldo = saldo
    @pin = pin
    @senha = senha
    @documento = documento
    @tipoConta = tipoConta
  end
end
