When(/^[Ee]u acesso a pagina de registro$/) do
  visit new_usuario_path
end

Then(/^[Ee]u devo ver um fómulário$/) do
  expect(page).to have_content("Registrar")
end

When /^[Ee]u clico em (.*)$/ do |button|
  click_button button
end

When /^[Ee]u pression $/ do |button|
  click_button button
end

When /^Eu preencho o formulário com os seguintes atributos:$/ do |table|
  puts table.rows_hash
  criteria = table.rows_hash.each do |field, value|
    fill_in field, :with => value
  end
end

Then(/^[Ee]u devo ver erros$/) do
  expect(page).to have_content("erro")
end
