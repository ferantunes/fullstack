puts '#### Repetição com times ####'

5.times do |i|
    puts 'Repetindo a mensagem ' + i.to_s + ' vez(es).'
end

puts '#### Repetição com while ####'

init = 0
while init <= 10 do
    puts 'Repetindo a mensagem ' + init.to_s + ' vez(es).'
    init += 1
end

puts '#### Repetição com FOR ####'

for item in (0...10)
    puts 'Repetindo a mensagem ' + item.to_s + ' vez(es).'
end

puts '#### Repetição com Array ####'

vingadores = ['Ironman', 'Hulk', 'Spiderman', 'Thor']

vingadores.each do |v|
    puts v
end

