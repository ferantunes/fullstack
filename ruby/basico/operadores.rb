numero1 = 0
numero2 = 0
numero3 = 0

puts 'Informe o primeiro número para somar:'
numero1 = gets.chomp.to_i

puts 'Informe o segundo número para somar:'
numero2 = gets.chomp.to_i

total = numero1 + numero2
puts total

puts 'Informe o primeiro número para subtrair:'
numero1 = gets.chomp.to_i

puts 'Informe o segundo número para subtrair:'
numero2 = gets.chomp.to_i

total = numero1 - numero2
puts total

puts 'Informe o primeiro número para multiplicar:'
numero1 = gets.chomp.to_i

puts 'Informe o segundo número para multiplicar:'
numero2 = gets.chomp.to_i

total = numero1 * numero2
puts total

puts 'Informe o primeiro número para dividir:'
numero1 = gets.chomp.to_i

puts 'Informe o segundo número para dividir:'
numero2 = gets.chomp.to_i

total = numero1 / numero2
puts total

v1 = 20
v2 = 2

puts v1.eql?(v2)