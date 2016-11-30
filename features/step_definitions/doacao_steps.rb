When(/^[Ee]u acesso a pagina de cadastro de doacao$/) do
  visit new_doacao_path
end

Then(/^[Ee]u devo ver o fómulário para criar$/) do
  expect(page).to have_content("Nova Doação")
end

When /^Eu preencho o formulário de criação com os seguintes atributos:$/ do |table|	
  puts table.rows_hash
  criteria = table.rows_hash.each do |field, value|
    fill_in field, :with => value
  end
end