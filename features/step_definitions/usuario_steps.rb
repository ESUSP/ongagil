When(/^[Ee]u acesso a pagina de registro$/) do
  visit new_usuario_path
end

When(/^[Ee]u acesso a pagina de lista de usuários$/) do
  visit usuarios_path
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
