Feature: PUT /posts/:id

  Scenario: Atualizar um post existente
    When eu faço uma requisição PUT para atualizar um post
    Then o código de resposta deve ser 200
    And o post atualizado deve conter os campos modificados
    And o schema da resposta atualizada deve ser válido
