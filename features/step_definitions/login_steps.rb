Dado("que acesso a página de login") do
  visit "http://parodify.qaninja.com.br/"
  click_on "Login"
end

Quando("submeto minhas credenciais com: {string} e {string}") do |email, password|
  find("#user_email").set email
  find("#user_password").set password
  click_on "Log in"
end
