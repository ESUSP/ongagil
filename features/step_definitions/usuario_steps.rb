def create_or_return_admin_user
  @user ||= create(:usuario_admin)
end

When(/^Eu tenho um usuario aleatorio cadastrado$/) do
  create(:usuario_aleatorio)
end

When(/^Eu filtro a pagina por nome "([^"]*)"$/) do |arg1|
  fill_in "nome", :with => arg1
  click_link_or_button "pesquisar"
end

Then(/^Não deve haver mais de (\d+) usuário no sistema$/) do |arg1|
  raise "Quantidade errada" unless Usuario.all.count <= arg1.to_i
end


When(/^[Ee]u acesso a pagina de registro$/) do
  visit new_usuario_path
end

When(/^[Ee]u acesso a pagina de lista de usuários$/) do
  visit usuarios_path
end

When(/^Eu clico excluir no primeiro usuario da lista$/) do
  page.find("a:eq(3)").click
end

When(/^Eu acesso página de alteração de senha de usuário$/) do
  create_or_return_admin_user
  visit usuarios_senha_path
end

When(/^Eu logo no sistema como admin$/) do
  create_or_return_admin_user
  page.driver.post login_path, usuario: attributes_for(:usuario_admin)
end

When(/^Eu faço logoff$/) do
  page.driver.delete logout_path
end

When(/^Não deve logar no sistema$/) do
  expect(page).to have_content('Entrar')
end

When(/^Eu acesso página de alteração de cadastro de usuário$/) do
  @usr = attributes_for(:usuario_admin)
  @usr = Usuario.find_by(email: @usr[:email])
  visit edit_usuario_path(@usr)
end

When(/^Eu preencho o formulário de alteração com os seguintes atributos:$/) do |table|
  puts table.rows_hash
  criteria = table.rows_hash.each do |field, value|
    fill_in field, :with => value
  end
end

Then(/^Eu devo ver a confirmação de alteração com o telefone "([^"]*)" e endereço "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_content(arg1)
  expect(page).to have_content(arg2)
end

Then /^Eu devo ver na lista de usuários os usuários "(.*)" e "(.*)"$/ do |nom1,nom2|
  expect(page).to have_content(nom1)
  expect(page).to have_content(nom2)
end

Then(/^[Ee]u devo ver o fómulário registrar$/) do
  expect(page).to have_content("Registrar")
end

When /^[Ee]u clico em (.*)$/ do |button|
  click_link_or_button button
end

When /^Eu preencho o formulário registrar com os seguintes atributos:$/ do |table|
  puts table.rows_hash
  criteria = table.rows_hash.each do |field, value|
    fill_in field, :with => value
  end
  # THIS BUG TOOK ME 1:30 hours to fix, had to fix the submit button type as well
  page.check "usuario_termos_de_uso"
end

Then(/^[Ee]u devo ver erros$/) do
  expect(page).to have_content("erro")
end
