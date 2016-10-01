require 'rails_helper'

RSpec.describe "doadors/new", type: :view do
  before(:each) do
    assign(:doador, Doador.new(
      :nome => "MyString",
      :endereco => "MyText",
      :telefone => 1,
      :frequencia => "MyString",
      :forma => "MyString"
    ))
  end

  it "renders new doador form" do
    render

    assert_select "form[action=?][method=?]", doadors_path, "post" do

      assert_select "input#doador_nome[name=?]", "doador[nome]"

      assert_select "textarea#doador_endereco[name=?]", "doador[endereco]"

      assert_select "input#doador_telefone[name=?]", "doador[telefone]"

      assert_select "input#doador_frequencia[name=?]", "doador[frequencia]"

      assert_select "input#doador_forma[name=?]", "doador[forma]"
    end
  end
end
