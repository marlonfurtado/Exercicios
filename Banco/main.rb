require_relative 'banco'
require_relative 'conta'

banco = Banco.new
banco.criar_conta("joao", 1000, 1111, 1111, "01479865416", 2)
banco.criar_conta("jose", 500, 2222, 2222, "64976546465", 2)
#banco.criar_conta("kenai", 700, 3333, 3333, "46679877656", 1)

banco.transferencia(2222, 1111, 200, 2222)

conta = banco.buscar_conta(2222)
puts conta.nome

banco.imprimir_saldos

puts "Numero de contas: #{banco.contas.length}"
puts banco.desconta_taxa(conta,500)
