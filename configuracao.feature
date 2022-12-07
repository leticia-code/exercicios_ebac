#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu acesse a página de um produto

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando eu selecionar a cor, tamanho e quantidade
E clicar no botão "Comprar"
Então deve exibir mensagem de sucesso "Produto adicionado ao carrinho!"

Cenário: Deve permitir apenas 10 produtos por venda
Quando eu inserir a quantidade maior que 10
E clicar no botão "Comprar"
Então deve exibir mensagem de erro "Quantidade inválida!"

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando eu selecionar a cor e o tamanho
E clicar no botão "Limpar"
Então deve limpar os campos e voltar ao estado original

Esquema do Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando eu selecionar <cor>, <tamanho> e <quantidade>
E clicar em no botão "Comprar"
Então deve exibir a <mensagem> de sucesso

Exemplos:
|      cor    | tamanho |     quantidade     |                  mensagem                     |
|     azul    |    p    |          3         |  "Produto adicionado ao carrinho!"            |
|   vermelho  |         |          2         |  "Por favor preencha os campos obrigatórios"  |
|             |    g    |          1         |  "Por favor preencha os campos obrigatórios"  |
|     azul    |    m    |                    |  "Por favor preencha os campos obrigatórios"  |
|             |         |                    |  "Por favor preencha os campos obrigatórios"  |