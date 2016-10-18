require 'rails_helper'

RSpec.describe "atividades/show", type: :view do
  before(:each) do
    @atividade = assign(:atividade, Atividade.create!(
      :atividade => "Atividade",
      :situacao => "Situacao",
      :projeto => "Projeto",
      :projetoid => 2,
      :atucao => "Atucao",
      :custo => "9.99",
      :cargahoras => "9.99",
      :responsavelid => 3,
      :responsavelnome => "Responsavelnome",
      :decricao => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Atividade/)
    expect(rendered).to match(/Situacao/)
    expect(rendered).to match(/Projeto/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Atucao/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Responsavelnome/)
    expect(rendered).to match(/MyText/)
  end
end
