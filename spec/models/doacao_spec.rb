require 'rails_helper'

RSpec.describe Doacao, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
    context "Validade da Doação" do
        it "Doação deve pertencer a Doador" do
            d = Doacao.reflect_on_association(:doador)
            d.macro.should == :belongs_to
        end
    end
end
