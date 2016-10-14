
When(/^[Ee]u acesso a pagina beneficiarios$/) do
  visit new_beneficiary_path
end

Then(/^[Ee]u devo ver um fomulário$/) do
  expect(page).to have_content("New")
end


When /^[Ee]u clico no (.*)$/ do |button|
  click_button button
end

When /^[Ee]u preencho o formulário:$/ do |table|
  puts table.rows_hash
  criteria = table.rows_hash.each do |field, value|
    fill_in field, :with => value
  end
end

Then(/^[Ee]u devo ver erros$/) do
  expect(page).to have_content("erro")
end