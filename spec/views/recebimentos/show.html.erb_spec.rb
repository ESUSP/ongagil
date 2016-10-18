=begin require 'rails_helper'

RSpec.describe "recebimentos/show", type: :view do
  before(:each) do
    @recebimento = assign(:recebimento, Recebimento.create!(
      :tipoRecebimento => "Tipo Recebimento",
      :local => "Local",
      :unidade => "Unidade",
      :projeto => "Projeto",
      :responsavel => "Responsavel",
      :beneficiarios => "Beneficiarios"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tipo Recebimento/)
    expect(rendered).to match(/Local/)
    expect(rendered).to match(/Unidade/)
    expect(rendered).to match(/Projeto/)
    expect(rendered).to match(/Responsavel/)
    expect(rendered).to match(/Beneficiarios/)
  end
=end
