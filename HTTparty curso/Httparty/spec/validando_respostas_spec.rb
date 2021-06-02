describe 'Fazer uma requisição' do
    it 'get' do
    @get_contato = Contato.get('/contacts/9')
    #puts @get_contato
   # puts @get_contato.code #valida o status da minha requisição
    #expect(@get_contato.code).to eq 200
    puts @get_contato.body
    #puts @get_contato.parsed_response['data']['attributes']['name']
    expect(@get_contato.parsed_response['data']['attributes']['name']).to eq 'bruno'
    expect(@get_contato.parsed_response['data']['attributes']['last-name']).to eq 'camargo'
    expect(@get_contato.parsed_response['data']['attributes']['email']).to eq 'bruno.1622558550714@camargo.com'
    expect(@get_contato.parsed_response['data']['attributes']['age']).to eq 28
    
    end
  
end