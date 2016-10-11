require 'rails_helper'

RSpec.describe "doadors/index", type: :view do
  before(:each) do
    assign(:doadors, [
      Doador.create!(
        :nome => "Nome",
        :endereco => "MyText",
        :telefone => 2,
        :frequencia => "Frequencia",
        :forma => "Forma"
      ),
      Doador.create!(
        :nome => "Nome",
        :endereco => "MyText",
        :telefone => 2,
        :frequencia => "Frequencia",
        :forma => "Forma"
      )
    ])
  end

  it "renders a list of doadors" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Frequencia".to_s, :count => 2
    assert_select "tr>td", :text => "Forma".to_s, :count => 2
  end
end
