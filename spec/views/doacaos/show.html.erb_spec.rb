=begin
require 'rails_helper'

RSpec.describe "doacaos/show", type: :view do
  before(:each) do
    @doacao = assign(:doacao, Doacao.create!(
      :doador => nil,
      :tipo => "Tipo",
      :valor => 2.5,
      :pago => "Pago",
      :forma => "Forma",
      :descricao => "MyText",
      :observacao => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Pago/)
    expect(rendered).to match(/Forma/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
=end
