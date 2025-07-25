Then('o código de resposta deve ser {int}') do |status_code|
  expect(@response.code).to eq(status_code)
end

Then('o schema da resposta deve ser válido') do
  expect(
    JSON::Validator.validate!(@schema, @response.parsed_response)
  ).to be_truthy
end

