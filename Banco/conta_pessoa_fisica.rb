require_relative 'conta'

class PessoaFisica < Conta

  attr_accessor :cpf
  attr_accessor :taxa
  attr_accessor :documento
  attr_accessor :tipoConta
  attr_accessor :senha

  def initialize(nome, saldo, pin, senha, documento, tipoConta)
    @senha = senha
    @cpf = cpf
    @taxa = 0.08
    super(nome, saldo, pin, senha, documento, tipoConta)

  end

end
