Feature: POST /posts

  Scenario: Criar um novo post
    When eu faço uma requisição POST para criar um post
    Then o código de resposta deve ser 201
    And o post criado deve conter os campos obrigatórios
    And o schema da resposta deve ser válido
