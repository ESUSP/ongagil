require 'rails_helper'

RSpec.describe "custos/edit", type: :view do
  before(:each) do
    @custo = assign(:custo, Custo.create!(
      :tipo => "MyString",
      :descricao => "MyText",
      :valor => 1.5
    ))
  end

  it "renders the edit custo form" do
    render

    assert_select "form[action=?][method=?]", custo_path(@custo), "post" do

      assert_select "input#custo_tipo[name=?]", "custo[tipo]"

      assert_select "textarea#custo_descricao[name=?]", "custo[descricao]"

      assert_select "input#custo_valor[name=?]", "custo[valor]"
    end
  end
end
