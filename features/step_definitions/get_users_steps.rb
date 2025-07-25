require 'json-schema'
require_relative '../schemas/get_schema'

include UserSchema

When('eu faço uma requisição GET para a lista de usuários') do
  @response = get_users
  @schema = UserSchema::LIST_SCHEMA
end
