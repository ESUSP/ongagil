require 'rails_helper'

=begin
RSpec.describe "projetos/show", type: :view do
  before(:each) do
    @projeto = assign(:projeto, Projeto.create!(
      #:ProjetoID => 2,
      :Status => "Status",
      :Projeto => "Projeto",
      :Tipo => "Tipo",
      :Area => "Area",
      :OngNumero => 3,
      :Ong => 4,
      :RespNumero => 5,
      :RespNome => "Resp Nome",
      :DescricaoProjeto => "Descricao Projeto"
    ))
  end

  it "renders attributes in <p>" do
    render
    #expect(rendered).to match(/2/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Projeto/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Resp Nome/)
    expect(rendered).to match(/Descricao Projeto/)
  end
end
=end
