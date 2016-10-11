require 'rails_helper'

RSpec.describe "doadors/show", type: :view do
  before(:each) do
    @doador = assign(:doador, Doador.create!(
      :nome => "Nome",
      :endereco => "MyText",
      :telefone => 2,
      :frequencia => "Frequencia",
      :forma => "Forma"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Frequencia/)
    expect(rendered).to match(/Forma/)
  end
end
