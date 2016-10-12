
require 'rails_helper'

RSpec.describe Doador, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
=begin 
  context "Testando a View do doador" do
    it "Cadastrar um doador" do
    visit '/doadors/new'
    within(".col-sm-9") do
      fill_in 'doador_nome', with: 'James Bond'
    end
    
    within(".col-sm-8") do
      fill_in 'doador_endereco', with: 'Avenida Tâmisa, 007'
    end
    
    within(".col-sm-7") do
      fill_in 'doador_telefone', with: 1134569900
    end
    click_button 'Salvar'
    
    expect(page).to have_content 'Doador'
  end
end 
=end

  context "Validade do Doador" do
      it "Doador válido?" do
          doador = Doador.new
          doador.nome = "Ricardo"
          doador.endereco = "Rua Legião Urbana, 256"
          doador.telefone = 23457765
          
          expect(doador.valid?).to be_truthy
      end 
      
      it "Doador inválido?" do
          doador = Doador.new
          doador.nome = nil
          doador.endereco = "Rua Marcos Nazi, 256"
          doador.telefone = 23457765
          
          expect(doador.valid?).to be_falsey
      end 
   end 
end




