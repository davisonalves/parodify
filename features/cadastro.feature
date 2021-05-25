#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | davison@email.com |
            | senha          | 1234567           |
            | senha_confirma | 1234567           |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email             | senha | confirma_senha | mensagem_saida                       |
            |                   | 12345 | 12345          | Oops! Informe seu email.             |
            | davison@email.com |       |                | Oops! Informe sua senha.             |
            | davison@email.com | 12345 | 11145          | Oops! Senhas não são iguais.         |
            |                   |       |                | Oops! Informe seu email e sua senha. |

    Cenario: Validação do campo email
        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"
