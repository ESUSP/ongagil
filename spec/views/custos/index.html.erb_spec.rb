require 'rails_helper'

RSpec.describe "custos/index", type: :view do
  before(:each) do
    assign(:custos, [
      Custo.create!(
        :tipo => "Tipo",
        :descricao => "MyText",
        :valor => 2.5
      ),
      Custo.create!(
        :tipo => "Tipo",
        :descricao => "MyText",
        :valor => 2.5
      )
    ])
  end

  it "renders a list of custos" do
    render
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
