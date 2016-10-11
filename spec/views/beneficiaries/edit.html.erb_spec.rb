require 'spec_helper'

RSpec.describe "beneficiaries/edit", type: :view do
  before(:each) do
    @beneficiary = assign(:beneficiary, Beneficiary.create!(
      :projeto => "MyString",
      :nome => "MyString",
      :estadoCivil => "MyString",
      :rg => "MyString",
      :cpf => "MyString",
      :telefone => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :estado => "MyString",
      :pais => "MyString",
      :cep => "MyString",
      :menor => false,
      :responsavel => "MyString"
    ))
  end

  it "renders the edit beneficiary form" do
    render

    assert_select "form[action=?][method=?]", beneficiary_path(@beneficiary), "post" do

      #assert_select "input#beneficiary_projeto[name=?]", "beneficiary[projeto]"

      #assert_select "input#beneficiary_nome[name=?]", "beneficiary[nome]"

      #assert_select "input#beneficiary_estadoCivil[name=?]", "beneficiary[estadoCivil]"

      #assert_select "input#beneficiary_rg[name=?]", "beneficiary[rg]"

      #assert_select "input#beneficiary_cpf[name=?]", "beneficiary[cpf]"

      #assert_select "input#beneficiary_telefone[name=?]", "beneficiary[telefone]"

      #assert_select "input#beneficiary_endereco[name=?]", "beneficiary[endereco]"

      #assert_select "input#beneficiary_bairro[name=?]", "beneficiary[bairro]"

      #assert_select "input#beneficiary_estado[name=?]", "beneficiary[estado]"

      #assert_select "input#beneficiary_pais[name=?]", "beneficiary[pais]"

      #assert_select "input#beneficiary_cep[name=?]", "beneficiary[cep]"

      #assert_select "input#beneficiary_menor[name=?]", "beneficiary[menor]"

      #assert_select "input#beneficiary_responsavel[name=?]", "beneficiary[responsavel]"
    end
  end
end
