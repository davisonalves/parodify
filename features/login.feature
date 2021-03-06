#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    Cenario: Login do usuário
        Dado que acesso a página de login
        Quando submeto minhas credenciais com: "davison@login.com" e "1234567"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login
        Dado que acesso a página de login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email           | senha   |
            | davison@404.com | 1234567 |
            |                 |         |
            | davison@404.com |         |
            |                 | 1234567 |
