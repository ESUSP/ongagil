
require 'rails_helper'

RSpec.describe Doador, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
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




