describe 'Login 2', :login2 do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/login2'
    end

    it 'com data de nascimento' do
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        case find('#login').text
        when /Dia/
            fill_in 'day', with: '29'
        when /Mês/
            fill_in 'month', with: '05'
        when /Ano/
            fill_in 'year', with: '1970'
        end

        click_button 'Login'

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end
end