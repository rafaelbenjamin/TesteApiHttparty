Dado("que efetuei uma requisição de consulta com o cep valido") do
   @response = HTTParty.get("https://viacep.com.br/ws/01310000/json/")
  end
  
Então("deve ser retonardo um registro válido") do
    expect(@response.code).to eq 200
    @ibge = @response.parsed_response['ibge']
    puts "IBGE: #@ibge"
end
  
Dado("que efetuei uma requisição de consulta com um cep inválido") do
    @response = HTTParty.get("https://viacep.com.br/ws/12345678/json/")
end
  
Então("deve retornar a mensagem de retorno com erro") do
    expect(@response.parsed_response['erro']).to eq true
    expect(@response.code).to eq 200
end