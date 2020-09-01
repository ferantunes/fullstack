describe 'Mouse Hover', :hovers do
    
    before(:each) do
        visit '/hovers'
    end

    it 'quando passo o mouse sobre o blade' do
        find('img[alt*=Blade]').hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'quando passo o mouse sobre o pantera negra' do
        find('img[alt^=Pantera]').hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse sobre o homem aranha' do
        find('img[alt$=Aranha]').hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

end