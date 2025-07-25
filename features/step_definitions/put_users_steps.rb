require 'json-schema'
include PutPostsSchema

When('eu faço uma requisição PUT para atualizar um post') do
  payload = {
    id: 1,
    title: 'Postagem atualizada',
    body: 'Conteúdo atualizado',
    userId: 1
  }

  @response = put_post(1, payload)
end

Then('o post atualizado deve conter os campos modificados') do
  expect(@response.parsed_response["title"]).to eq("Postagem atualizada")
  expect(@response.parsed_response["body"]).to eq("Conteúdo atualizado")
end

Then('o schema da resposta atualizada deve ser válido') do
  expect(
    JSON::Validator.validate!(PutPostsSchema::UPDATE_SCHEMA, @response.parsed_response)
  ).to be_truthy
end
