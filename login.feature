#language: pt

Funcionalidade: Login na Plataforma
Como cliente da EBAC SHOP
Quero fazer o login na plataforma  
Para visualizar meus pedidos

Contexto: 
Dado que eu acesse a página de login na plataforma

Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
Quando eu digitar o usuário "leticia@ebac.com.br"
E a senha "senha123@"
Então deve exibir mensagem de boas vindas "Olá Letícia"

Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
Quando eu digitar o usuário "xxxdddduuu@ebac.com.br"
E a senha "senha123@"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

Esquema do Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
Quando eu digitar o <usuario>
E a <senha>
Então deve exibir a <mensagem> de sucesso

Exemplos:
|       usuario          |      senha      |       mensagem     |    
| "leticia@ebac.com.br"  |   "senha123@"   |    "Olá Letícia!"  |
| "vinicius@ebac.com.br" |   "senha123@"   |    "Olá Vinícius"  |
| "gabriel@ebac.com.br"  |   "senha123@"   |    "Olá Gabriel"   |