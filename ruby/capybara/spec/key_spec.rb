describe 'Teclado', :key do
    
    before(:each) do
        visit '/key_presses'
    end

    it 'enviando teclas' do
        teclas = %i[tab escape space enter shift control alt] #Array de symbol

        teclas.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
        end
    end

    it 'enviando letras' do
        letras = %w[a s d f g h j k l] #Array de string

        letras.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
        end
    end

end