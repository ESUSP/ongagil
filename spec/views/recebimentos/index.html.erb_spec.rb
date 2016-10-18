=begin require 'rails_helper'

RSpec.describe "recebimentos/index", type: :view do
  before(:each) do
    assign(:recebimentos, [
      Recebimento.create!(
        :tipoRecebimento => "Tipo Recebimento",
        :local => "Local",
        :unidade => "Unidade",
        :projeto => "Projeto",
        :responsavel => "Responsavel",
        :beneficiarios => "Beneficiarios"
      ),
      Recebimento.create!(
        :tipoRecebimento => "Tipo Recebimento",
        :local => "Local",
        :unidade => "Unidade",
        :projeto => "Projeto",
        :responsavel => "Responsavel",
        :beneficiarios => "Beneficiarios"
      )
    ])
  end

  it "renders a list of recebimentos" do
    render
    assert_select "tr>td", :text => "Tipo Recebimento".to_s, :count => 2
    assert_select "tr>td", :text => "Local".to_s, :count => 2
    assert_select "tr>td", :text => "Unidade".to_s, :count => 2
    assert_select "tr>td", :text => "Projeto".to_s, :count => 2
    assert_select "tr>td", :text => "Responsavel".to_s, :count => 2
    assert_select "tr>td", :text => "Beneficiarios".to_s, :count => 2
  end
=end
