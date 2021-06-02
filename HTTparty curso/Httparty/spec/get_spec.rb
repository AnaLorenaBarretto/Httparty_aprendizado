describe 'Fazer uma requisição' do
    it 'get' do
    @get_contato = Contato.get('/contacts')
    puts @get_contato
    end
  
end