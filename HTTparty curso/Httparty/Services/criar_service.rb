module Criar
    include HTTParty
    base_uri CONFIG['url_padrao']      #'https://api-de-tarefas.herokuapp.com' #url base de contato
    #opções do meu service
    format :json  
end