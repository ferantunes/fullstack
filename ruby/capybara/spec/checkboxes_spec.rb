describe 'Caixas de Seleção', :checkboxes do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it('marcando uma opção') do
        expect(find('input[value=guardians]').checked?).to be true
        expect(find('input[name=antman]').checked?).to be true

        check('thor')
    end

    it('desmarcando uma opção') do
        expect(find('input[value=guardians]').checked?).to be true
        expect(find('input[name=antman]').checked?).to be true
        
        uncheck('antman')

        expect(find('input[value=guardians]').checked?).to be true
        expect(find('input[name=antman]').checked?).to be false
    end

    it ('marcando com find set true') do
        expect(find('input[value=guardians]').checked?).to be true
        expect(find('input[name=antman]').checked?).to be true
        expect(find('input[value=cap]').checked?).to be false

        find('input[value=cap]').set(true)

        expect(find('input[value=cap]').checked?).to be true
    end

    it ('desmarcando com find set false') do
        expect(find('input[value=guardians]').checked?).to be true
        expect(find('input[name=antman]').checked?).to be true

        find('input[value=guardians]').set(false)

        expect(find('input[value=guardians]').checked?).to be false
    end

    after(:each) do
        sleep 3
    end

end