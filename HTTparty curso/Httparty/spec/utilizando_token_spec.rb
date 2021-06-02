describe 'utilizando' do
    it 'token' do
        @email = Faker::Internet.email #gera um email aleatório

        @body = {
            user:{
                email:@email,
                password:'123456',
                password_confirmation:'123456'

            }
        }.to_json

        @header = {
            Accept:'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json'
        }

        @criar = Criar.post('/users', body: @body, headers: @header)
        puts @criar.body
        puts @criar.parsed_response['data']['attributes']['auth-token']
        

        @body_one = {
            session:{
                email:@email,
                password:'123456'
            }
        }.to_json

        @header_one = {
            Accept:'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json',
            Authorization: "#{@criar.parsed_response['data']['attributes']['auth-token']}"
        }

        @login = Criar.post('/sessions', body: @body_one, headers: @header_one)
        puts @login.body
    end
  
end