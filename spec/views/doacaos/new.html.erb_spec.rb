require 'rails_helper'

RSpec.describe "doacaos/new", type: :view do
  before(:each) do
    assign(:doacao, Doacao.new(
      :doador => nil,
      :tipo => "MyString",
      :valor => 1.5,
      :pago => "MyString",
      :forma => "MyString",
      :descricao => "MyText",
      :observacao => "MyText"
    ))
  end

  it "renders new doacao form" do
    render

    assert_select "form[action=?][method=?]", doacaos_path, "post" do

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
