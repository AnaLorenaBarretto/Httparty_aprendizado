describe 'Requisição criar contato' do
    it 'post' do
        @body = {
            "name": "Ana Teste25",
            "last_name": "API 215",
            "email": "anateste0325@gmail.com",
            "age": "28",
            "phone": "21984759575",
            "address": "Rua dois",
            "state": "Minas Gerais",
            "city": "Belo Horizonte"

        }.to_json

        @request = Contato.post('/contacts', body: @body)
        puts @request
    end
  
end