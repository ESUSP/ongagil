require 'rails_helper'

RSpec.describe "beneficiaries/show", type: :view do
  before(:each) do
    @beneficiary = assign(:beneficiary, Beneficiary.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Projeto/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Estado Civil/)
    expect(rendered).to match(/Rg/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(/Pais/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Responsavel/)
  end
end