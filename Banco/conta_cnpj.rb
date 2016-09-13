require_relative 'conta'

class Cnpj < Conta
  attr_accessor :cnpj
  attr_accessor :taxa
  attr_accessor :documento
  attr_accessor :tipoConta
  attr_accessor :senha

  def initialize(nome, saldo, pin, senha, cnpj, documento, tipoConta)
    super(nome, saldo, pin, senha, documento, tipoConta)
    @senha = senha

    @cnpj = cnpj
    @taxa = 0.05
  end
end
