class Carro
    attr_accessor :nome

    def ligar
        puts 'O carro está ligado!'
    end
end

carro = Carro.new
carro.nome = 'Duster'

puts carro.nome
carro.ligar