require 'json-schema'
include PostSchema

When('eu faço uma requisição POST para criar um post') do
  payload = {
    title: 'Postagem de teste',
    body: 'Conteúdo do post',
    userId: 1
  }

  @response = post_post(payload)
  @schema = PostSchema::POST_RESPONSE_SCHEMA
end

Then('o post criado deve conter os campos obrigatórios') do
  expect(@response.parsed_response).to include("id", "title", "body", "userId")
end
