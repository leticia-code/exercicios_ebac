#language: pt

Funcionalidade: Login na Plataforma
Como cliente da EBAC-SHOP
Quero concluir meu cadastro   
Para finalizar minha compra

Contexto: 
Dado que eu acesse a página de login na plataforma

Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
Quando eu preencher todos os dados obrigatórios
E clicar em "Finalizar pedido"
Então deve exibir mensagem de sucesso "Pedido realizado com sucesso"

Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
Quando eu digitar o usuário "xxxdddduuusdfs"
Então deve exibir uma mensagem de alerta "E-mail inválido"

Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
Quando eu bão preencher todos os dados obrigatórios
E clicar em "Finalizar pedido"
Então deve exibir mensagem de erro "Ps campos obrigatórios devem ser preenchidos"

Esquema do Cenário:  Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
Quando eu digitar o <email>
Então deve exibir a <mensagem> de sucesso

Exemplos:
|      email     |        mensagem      |    
| "dfasdgaWERsdf"  |   "E-mail inválido"  |
| "email12345678"  |   "E-mail inválido"  |
| "email.com"      |   "E-mail inválido"  |