describe 'Select2', :select2 do
    
    describe('single', :single) do
        before(:each) do
            visit '/apps/select2/single.html'
        end

        it 'seleciona ator por nome' do
            find('.select2-selection--single').click
            find('.select2-results__option', text: 'Adam Sandler').click
        end

        it 'busca e clica no ator' do
            find('.select2-selection--single').click
            find('.select2-search__field').set 'Chris Rock'
            find('.select2-results__option').click
        end

    end

    describe('multiple', :mult) do
        before(:each) do
            visit '/apps/select2/multi.html'
        end

        def seleciona_ator(ator)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click
        end

        def verifica_ator_adicionado(ator)
            expect(find('.select2-selection__rendered')).to have_content ator
        end

        it 'selecionar atores' do
            atores = ['Jim Carrey', 'Owen Wilson', 'Kevin James']

            atores.each do |a|
                seleciona_ator(a)
                verifica_ator_adicionado(a)
            end
        end

    end

end