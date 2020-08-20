begin
    file = File.open('./hello.txt')
    if file
        puts file.read
    end
rescue => e
    puts e.message
    puts e.backtrace
end

def soma(v1, v2)
    v1 + v2
rescue Exception => e
    puts "Erro ao executar a soma: #{e}"
end

soma('10', 5)