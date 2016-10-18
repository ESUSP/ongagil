require 'rails_helper'

RSpec.describe "custos/show", type: :view do
  before(:each) do
    @custo = assign(:custo, Custo.create!(
      :tipo => "Tipo",
      :descricao => "MyText",
      :valor => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2.5/)
  end
end
