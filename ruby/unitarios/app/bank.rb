class Conta
    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        self.saldo = saldo
    end

    def saca(valor, limite_max, valor_taxa)
        if (valor > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque :('
        elsif (valor > limite_max)
            self.mensagem = 'Limite máximo por saque é de R$ ' + limite_max.to_s
        else
            self.saldo -= valor + valor_taxa
        end
    end
end

class ContaCorrente < Conta
    def saca(valor, limite_max = 700, valor_taxa = 5.00)
        super
    end
end

class ContaPoupanca < Conta
    def saca(valor, limite_max = 500, valor_taxa = 2.00)
        super
    end
end