require 'rails_helper'

RSpec.describe "projetos/new", type: :view do
  before(:each) do
    assign(:projeto, Projeto.new(
      :ProjetoID => 1,
      :Status => "MyString",
      :Projeto => "MyString",
      :Tipo => "MyString",
      :Area => "MyString",
      :OngNumero => 1,
      :Ong => 1,
      :RespNumero => 1,
      :RespNome => "MyString",
      :DescricaoProjeto => "MyString"
    ))
  end

  it "renders new projeto form" do
    render

    assert_select "form[action=?][method=?]", projetos_path, "post" do

      assert_select "input#projeto_ProjetoID[name=?]", "projeto[ProjetoID]"

      assert_select "input#projeto_Status[name=?]", "projeto[Status]"

      assert_select "input#projeto_Projeto[name=?]", "projeto[Projeto]"

      assert_select "input#projeto_Tipo[name=?]", "projeto[Tipo]"

      assert_select "input#projeto_Area[name=?]", "projeto[Area]"

      assert_select "input#projeto_OngNumero[name=?]", "projeto[OngNumero]"

      assert_select "input#projeto_Ong[name=?]", "projeto[Ong]"

      assert_select "input#projeto_RespNumero[name=?]", "projeto[RespNumero]"

      assert_select "input#projeto_RespNome[name=?]", "projeto[RespNome]"

      assert_select "input#projeto_DescricaoProjeto[name=?]", "projeto[DescricaoProjeto]"
    end
  end
end
