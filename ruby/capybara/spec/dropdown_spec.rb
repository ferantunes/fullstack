describe 'Caixa de Opções', :dropdown do
    
    it 'item específico simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        
        select('Loki', from: 'dropdown') #método para quando o elemento tem id
    end

    it 'item específico com o find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
    end

    it 'qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end

end