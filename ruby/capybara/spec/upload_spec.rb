describe 'Upload', :upload do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/groot.jpg'
    end

    it 'upload com arquivo texto' do
        attach_file('file-upload', @arquivo)        
        click_button 'Upload'

        expect(find('#uploaded-file').text).to eql 'arquivo.txt'
    end

    it 'upload de imagem' do
        attach_file('file-upload', @imagem)        
        click_button 'Upload'

        expect(find('#new-image')[:src]).to include '/uploads/groot.jpg'
    end

end