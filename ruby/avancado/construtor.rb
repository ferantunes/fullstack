class Conta
    attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome     
  end

  def deposita(valor)
    self.saldo += valor
    puts 'Depositando a quantia de R$ ' + valor.to_s + ' reais.'
    puts "Depositando a quantia de R$ #{valor} reais na conta de #{self.nome}."
  end

end

conta = Conta.new('Fernanda')

conta.saldo = 0.0
conta.deposita(500.00)

puts conta.saldo

conta.deposita(10.00)

puts conta.saldo
puts conta.nome