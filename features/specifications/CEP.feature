# language: pt
Funcionalidade: Consulta de CEP
 Como um usuário
 Quero realizar a consulta de um CEP
 Para validar os dados atrelados a ele

  @positivo
  Cenário: Consulta de CEP válido
    Dado que efetuei uma requisição de consulta com o cep valido
    Então deve ser retonardo um registro válido

  @negativo
  Cenário: Consultar um CEP inválido
    Dado que efetuei uma requisição de consulta com um cep inválido
    Então deve retornar a mensagem de retorno com erro