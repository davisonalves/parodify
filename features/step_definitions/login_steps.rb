Dado("que acesso a página de login") do
  goto_login()
end

Quando("submeto minhas credenciais com: {string} e {string}") do |email, password|
  login_with(email, password)
end
