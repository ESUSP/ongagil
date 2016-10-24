When(/^[Ee]u acesso a pagina de cadastro de projetos$/) do
  visit new_projeto_path
end

Then(/^[Ee]u devo ver o fómulário de cadastro$/) do
  expect(page).to have_content("Cadastrar Novo Projeto")
end

When /^[Ee]u pressiono o botão (.*)$/ do |button|
  click_button button
end

When /^Eu preencho o formulário de cadastro com os seguintes atributos:$/ do |table|	
  puts table.rows_hash
  criteria = table.rows_hash.each do |field, value|
    fill_in field, :with => value
  end
end

Then(/^[Ee]u devo ver erros$/) do
  expect(page).to have_content("erro")
end
