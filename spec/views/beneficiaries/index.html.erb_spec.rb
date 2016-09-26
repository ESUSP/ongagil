require 'rails_helper'

RSpec.describe "beneficiaries/index", type: :view do
  before(:each) do
    assign(:beneficiaries, [
      Beneficiary.create!(
        :projeto => "Projeto",
        :nome => "Nome",
        :estadoCivil => "Estado Civil",
        :rg => "Rg",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :estado => "Estado",
        :pais => "Pais",
        :cep => "Cep",
        :menor => false,
        :responsavel => "Responsavel"
      ),
      Beneficiary.create!(
        :projeto => "Projeto",
        :nome => "Nome",
        :estadoCivil => "Estado Civil",
        :rg => "Rg",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :estado => "Estado",
        :pais => "Pais",
        :cep => "Cep",
        :menor => false,
        :responsavel => "Responsavel"
      )
    ])
  end

  it "renders a list of beneficiaries" do
    render
    assert_select "tr>td", :text => "Projeto".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Estado Civil".to_s, :count => 2
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Pais".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Responsavel".to_s, :count => 2
  end
end
