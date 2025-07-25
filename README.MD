# Desafio de Automação de Testes API — JSONPlaceholder

## Sobre

Este projeto automatiza testes para os 4 verbos HTTP (GET, POST, PUT, DELETE) da API pública JSONPlaceholder, validando os códigos de resposta HTTP e o JSON Schema das respostas.

---

## Tecnologias

- Ruby 3.2.2
- Cucumber 7.0
- HTTParty
- json-schema
- RSpec

---

## Estrutura do projeto

features/
├── get_users.feature
├── post_users.feature
├── put_users.feature
├── delete_users.feature
├── step_definitions/
│   ├── common_steps.rb       
│   ├── get_users_steps.rb
│   ├── post_users_steps.rb
│   ├── put_users_steps.rb
│   ├── delete_users_steps.rb
├── schemas/
│   ├── get_schema.rb     
│   ├── post_schema.rb     
│   ├── put_schema.rb       
├── support/
│   └── env.rb                


---

## Como rodar

### 1. Instalar as gems

```bash 
bundle install
```

### 2. Execute os testes

```bash 
bundle exec cucumber
```

---


## Detalhes do teste

GET /users: verifica o retorno da lista de usuários, status 200 e valida o JSON Schema.

POST /posts: cria um post, verifica status 201, campos obrigatórios na resposta e JSON Schema.

PUT /posts/:id: atualiza um post existente, valida status 200, campos atualizados e JSON Schema.

DELETE /posts/:id: deleta um post e verifica status 200.
---

## Contato
Douglas Felipe Lima de Godoy
QA Engineer | QA Lead
GitHub | douglaslimagodoy

