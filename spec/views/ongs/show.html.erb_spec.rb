require 'rails_helper'

RSpec.describe "ongs/show", type: :view do
  before(:each) do
    @ong = assign(:ong, Ong.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :uf => "Uf",
      :cidade => "Cidade",
      :telefone => "Telefone",
      :email => "Email1@a.com",
      :site => "Site",
      :cnpj => "Cnpj",
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Uf/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Site/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/Tipo/)
  end
end
