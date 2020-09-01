describe 'Drag and Drop', :drop do
    
    before(:each) do
        visit '/drag_and_drop'
    end

    it 'homem aranha pertence ao time stark' do
        
        find('img[alt$=Aranha]').drag_to find('.team-stark .column')

        expect(find('.team-stark .column')).to have_css 'img[alt$=Aranha]'
        expect(find('.team-cap .column')).not_to have_css 'img[alt$=Aranha]'
    end

end
