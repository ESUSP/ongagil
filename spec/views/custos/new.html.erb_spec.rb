require 'rails_helper'

RSpec.describe "custos/new", type: :view do
  before(:each) do
    assign(:custo, Custo.new(
      :tipo => "MyString",
      :descricao => "MyText",
      :valor => 1.5
    ))
  end

  it "renders new custo form" do
    render

    assert_select "form[action=?][method=?]", custos_path, "post" do

      assert_select "input#custo_tipo[name=?]", "custo[tipo]"

      assert_select "textarea#custo_descricao[name=?]", "custo[descricao]"

      assert_select "input#custo_valor[name=?]", "custo[valor]"
    end
  end
end
