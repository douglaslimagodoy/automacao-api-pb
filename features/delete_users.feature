Feature: DELETE /posts/:id

  Scenario: Deletar um post existente
    When eu faço uma requisição DELETE para remover um post
    Then o código de resposta deve ser 200
