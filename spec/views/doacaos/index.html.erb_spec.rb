=begin
require 'rails_helper'

RSpec.describe "doacaos/index", type: :view do
  before(:each) do
    assign(:doacaos, [
      Doacao.create!(
        :doador => nil,
        :tipo => "Tipo",
        :valor => 2.5,
        :pago => "Pago",
        :forma => "Forma",
        :descricao => "MyText",
        :observacao => "MyText"
      ),
      Doacao.create!(
        :doador => nil,
        :tipo => "Tipo",
        :valor => 2.5,
        :pago => "Pago",
        :forma => "Forma",
        :descricao => "MyText",
        :observacao => "MyText"
      )
    ])
  end

  it "renders a list of doacaos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Pago".to_s, :count => 2
    assert_select "tr>td", :text => "Forma".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
=end