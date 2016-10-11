
require 'rails_helper'

RSpec.describe Beneficiary, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  context "Validade do Beneficiary" do
      it "Beneficiary válido?" do
          beneficiary = Beneficiary.new
          beneficiary.projeto = "2"
          beneficiary.nome = "Projeto das criancas"
          beneficiary.rg = "491223638"
          beneficiary.cpf ="41889954837"
          beneficiary.telefone= "1143289246"
          
          expect(beneficiary.valid?).to be_truthy
      end 
      
      it "Beneficiary inválido?" do
          beneficiary = Beneficiary.new
          beneficiary.projeto = nil
          beneficiary.nome = "Ligia Santos"
          beneficiary.rg = "49122368"
          beneficiary.cpf ="41889954837"
          beneficiary.telefone= nil
          
          expect(beneficiary.valid?).to be_falsey
      end 
   end 
end





