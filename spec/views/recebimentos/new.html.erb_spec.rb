=begin require 'rails_helper'

RSpec.describe "recebimentos/new", type: :view do
  before(:each) do
    assign(:recebimento, Recebimento.new(
      :tipoRecebimento => "MyString",
      :local => "MyString",
      :unidade => "MyString",
      :projeto => "MyString",
      :responsavel => "MyString",
      :beneficiarios => "MyString"
    ))
  end

  it "renders new recebimento form" do
    render

    assert_select "form[action=?][method=?]", recebimentos_path, "post" do

      assert_select "input#recebimento_tipoRecebimento[name=?]", "recebimento[tipoRecebimento]"

      assert_select "input#recebimento_local[name=?]", "recebimento[local]"

      assert_select "input#recebimento_unidade[name=?]", "recebimento[unidade]"

      assert_select "input#recebimento_projeto[name=?]", "recebimento[projeto]"

      assert_select "input#recebimento_responsavel[name=?]", "recebimento[responsavel]"

      assert_select "input#recebimento_beneficiarios[name=?]", "recebimento[beneficiarios]"
    end
  end
=end
