=begin
require 'rails_helper'

RSpec.describe "doacaos/edit", type: :view do
  before(:each) do
    @doacao = assign(:doacao, Doacao.create!(
      :doador => nil,
      :tipo => "MyString",
      :valor => 1.5,
      :pago => "MyString",
      :forma => "MyString",
      :descricao => "MyText",
      :observacao => "MyText"
    ))
  end

  it "renders the edit doacao form" do
    render

    assert_select "form[action=?][method=?]", doacao_path(@doacao), "post" do

      assert_select "input#doacao_doador_id[name=?]", "doacao[doador_id]"

      assert_select "input#doacao_tipo[name=?]", "doacao[tipo]"

      assert_select "input#doacao_valor[name=?]", "doacao[valor]"

      assert_select "input#doacao_pago[name=?]", "doacao[pago]"

      assert_select "input#doacao_forma[name=?]", "doacao[forma]"

      assert_select "textarea#doacao_descricao[name=?]", "doacao[descricao]"

      assert_select "textarea#doacao_observacao[name=?]", "doacao[observacao]"
    end
  end
end
=end
