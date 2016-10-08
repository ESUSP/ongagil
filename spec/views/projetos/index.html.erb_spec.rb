require 'rails_helper'

RSpec.describe "projetos/index", type: :view do
  before(:each) do
    assign(:projetos, [
      Projeto.create!(
        #:ProjetoID => 2,
        :Status => "Status",
        :Projeto => "Projeto",
        :Tipo => "Tipo",
        :Area => "Area",
        :OngNumero => 3,
        :Ong => 'ONG NAME',
        :RespNumero => 5,
        :RespNome => "Resp Nome",
        :DescricaoProjeto => "Descricao Projeto"
      ),
      Projeto.create!(
        #:ProjetoID => 2,
        :Status => "Status",
        :Projeto => "Projeto",
        :Tipo => "Tipo",
        :Area => "Area",
        :OngNumero => 3,
        :Ong => 'ONG NAME',
        :RespNumero => 5,
        :RespNome => "Resp Nome",
        :DescricaoProjeto => "Descricao Projeto"
      )
    ])
  end

  it "renders a list of projetos" do
    render
#    assert_select "tr>td", :text => 2.to_s, :count => 2
     assert_select "tr>td", :text => "Projeto".to_s, :count => 2
#    assert_select "tr>td", :text => "Descriço".to_s, :count => 2
#    assert_select "tr>td", :text => "Status".to_s, :count => 2
#    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
#    assert_select "tr>td", :text => "Area".to_s, :count => 2
#    assert_select "tr>td", :text => "ONG".to_s, :count => 2
#    assert_select "tr>td", :text => "Resp Nome".to_s, :count => 2
  end
end
