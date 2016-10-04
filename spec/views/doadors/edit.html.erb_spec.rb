=begin

require 'rails_helper'

RSpec.describe "doadors/edit", type: :view do
  before(:each) do
    @doador = assign(:doador, Doador.create!(
      :nome => "MyString",
      :endereco => "MyText",
      :telefone => 1,
      :frequencia => "MyString",
      :forma => "MyString"
    ))
  end

  it "renders the edit doador form" do
    render

    assert_select "form[action=?][method=?]", doador_path(@doador), "post" do

      assert_select "input#doador_nome[name=?]", "doador[nome]"

      assert_select "textarea#doador_endereco[name=?]", "doador[endereco]"

      assert_select "input#doador_telefone[name=?]", "doador[telefone]"

      assert_select "input#doador_frequencia[name=?]", "doador[frequencia]"

      assert_select "input#doador_forma[name=?]", "doador[forma]"
    end
  end
end

=end