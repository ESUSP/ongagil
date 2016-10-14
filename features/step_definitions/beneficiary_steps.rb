
=begin  
When(/^[Ee]u acesso a pagina beneficiarios$/) do
  visit new_beneficiary_path
end

Then(/^[Ee]u devo ver um fomulário$/) do
  expect(page).to have_content("New")
end


When /^[Ee]u aperto (.*)$/ do |button|
  click_button cadastrar
end

When /^[Ee]u clico no $/ do |button|
 click_button salvar
end

When /^Eu preencho:$/ do |table|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^Eu clico no cadastrar$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^[Ee]u devo ver erros$/) do
  expect(page).to have_content("erro")
=end