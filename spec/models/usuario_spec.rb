require 'rails_helper'

RSpec.describe Usuario, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  usr = FactoryGirl.build(:usuario_aleatorio)

  it "é válido com dados válidos" do
  	expect(usr).to be_valid 
  end

  it "é válido com o mínimo de dados" do 
  	usr.nome = nil
  	usr.endereco = nil
  	usr.estado = nil
  	usr.cidade = nil
  	usr.ocultar = nil
  	expect(usr).to be_valid 
  end
  it "é inválido com e-mails incorretos" do
    usr.email = "Somente Nome"
    expect(usr).to be_invalid 
    usr.email = "Somente Arroba@"
    expect(usr).to be_invalid 
    usr.email = "SomenteDominio@Dominio"
    expect(usr).to be_invalid 
    usr.email = "Nome Com Espaco@Dominio.com"
    expect(usr).to be_invalid 
  end
  it "é inválido com e-mail em uso" do
  	uteste = create(:usuario_valido) #salva usuaário com e-mail padrão
    uteste2 = build(:usuario_valido) #novo usuário com mesmos dados
  	expect(uteste2).to be_invalid 
  end

  it "é inválido com senha menor que 5 caracteres" do
    usr.password = "1234"
    usr.password_confirmation = "1234"
    expect(usr).to be_invalid 
  end

  it "é inválido sem confirmação de senha que confira" do
  	usr.password_confirmation = "654321"
  	expect(usr).to be_invalid
  end
end
