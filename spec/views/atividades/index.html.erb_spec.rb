require 'rails_helper'

RSpec.describe "atividades/index", type: :view do
  before(:each) do
    assign(:atividades, [
      Atividade.create!(
        :atividade => "Atividade",
        :situacao => "Situacao",
        :projeto => "Projeto",
        :projetoid => 2,
        :atuacao => "Atuacao",
        :custo => "9.99",
        :cargahoras => "9.99",
        :responsavelid => 3,
        :responsavelnome => "Responsavelnome",
        :decricao => "MyText"
      ),
      Atividade.create!(
        :atividade => "Atividade",
        :situacao => "Situacao",
        :projeto => "Projeto",
        :projetoid => 2,
        :atuacao => "Atuacao",
        :custo => "9.99",
        :cargahoras => "9.99",
        :responsavelid => 3,
        :responsavelnome => "Responsavelnome",
        :decricao => "MyText"
      )
    ])
  end

#  it "renders a list of atividades" do
#    render
#    assert_select "tr>td", :text => "Atividade".to_s, :count => 2
#    assert_select "tr>td", :text => "Situacao".to_s, :count => 2
#    assert_select "tr>td", :text => "Projeto".to_s, :count => 2
#    assert_select "tr>td", :text => 2.to_s, :count => 2
#    assert_select "tr>td", :text => "Atuacao".to_s, :count => 2
#    assert_select "tr>td", :text => "9.99".to_s, :count => 2
#    assert_select "tr>td", :text => "9.99".to_s, :count => 2
#    assert_select "tr>td", :text => 3.to_s, :count => 2
#    assert_select "tr>td", :text => "Responsavelnome".to_s, :count => 2
#    assert_select "tr>td", :text => "MyText".to_s, :count => 2
#  end
end
