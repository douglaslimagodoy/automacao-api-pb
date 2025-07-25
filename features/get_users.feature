Feature: GET /users

  Scenario: Validar retorno da lista de usuários
    When eu faço uma requisição GET para a lista de usuários
    Then o código de resposta deve ser 200
    And o schema da resposta deve ser válido
