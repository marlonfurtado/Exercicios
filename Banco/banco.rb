require_relative 'conta'
require_relative 'conta_pessoa_fisica'

class Banco

  attr_accessor :contas

  def initialize
    self.contas = []
  end

  #TIPOS DE CONTAS
  # 1 pesosa_fisica
  # 2 cnpj
  def criar_conta(nome, saldo, pin, senha, documento, tipoConta)
    if tipoConta == 1
      self.contas << PessoaFisica.new(nome, saldo, pin, senha, documento, tipoConta)

    elsif tipoConta == 2
      self.contas << Cnpj.new(nome, saldo, pin, senha, documento, tipoConta)
    end
  end

  def imprimir_saldos
    self.contas.each do |conta|
      puts "A conta #{conta.pin} de #{conta.nome} tem saldo: #{conta.saldo}"
    end
  end

  def buscar_conta(pin)
    self.contas.find { |conta| conta.pin == pin }
  end

  def deposito(destino, valor)
    contaDestino = buscar_conta(destino)
    if valor > 0
      contaDestino.saldo += valor
    else
      puts "Valor inválido"
    end
  end

  def saque(origem, valor, senha)
    contaOrigem = buscar_conta(origem)
    unless senha_valida(contaOrigem, senha)
      puts "Senha inválida"
      return false
    end

    valor = desconta_taxa(contaOrigem, valor)

    if valor > 0 and contaOrigem.saldo >= valor
      contaOrigem.saldo -= valor
    else
      puts "Valor invalido"
    end
  end


  def desconta_taxa(conta, valor)
    valor + (valor * conta.taxa)
  end

  def transferencia(origem, destino, valor, senha)
    saque(origem, valor, senha)
    deposito(destino, valor)
  end

  private
  def senha_valida(conta, senha)
    if conta.senha == senha
      return true
    end
    return false

  end

end
