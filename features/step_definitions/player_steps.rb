Dado("Login com {string} e {string}") do |email, password|
  visit "http://parodify.qaninja.com.br/"
  click_on "Login"
  find("#user_email").set email
  find("#user_password").set password
  click_on "Log in"
end

Dado("que eu gosto muito de {string}") do |cat|
  find("a[href='/search/new']").click
  find("img[src$='#{cat.downcase}.png']").click
end

Quando("toco a seguinte canção:") do |table|
  parodi = table.rows_hash
end

Entao("essa paródia deve ficar em modo de reprodução") do
  pending # Write code here that turns the phrase above into concrete actions
end
