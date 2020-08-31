describe 'Dynamic Control', :dc do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'
    end

    it 'quando habilita o campo' do
        expect(page.has_field? 'movie', disabled: true).to be true

        click_button 'Habilita'

        expect(page.has_field? 'movie', disabled: false).to be true
    end

end