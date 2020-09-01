describe 'Login 3 - Access', :login3 do
    
    before(:each) do
        visit '/access'
    end

    it 'login com sucesso', :login do
        
        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'

            click_button 'Entrar'
        end
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'cadastro com sucesso', :cadastro do
        
        within('#signup') do
            find('input[name=username]').set 'fernanda'
            find('input[name=password]').set '123456'

            click_link 'Criar Conta'
        end
        expect(find('#result').text).to eql 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end