require 'rails_helper'

RSpec.describe 'Usuario', type: :model do
  describe 'model' do
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

    it "é válido com e-mail correto" do
      usr.email = "nome@dominio.xx"
      expect(usr).to be_valid
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

    it "é válido com senha maior que 4 caracteres" do
      usr.password = "12345"
      usr.password_confirmation = "12345"
      expect(usr).to be_valid
    end

    it "é inválido sem confirmação de senha que confira" do
      usr.password_confirmation = "654321"
      expect(usr).to be_invalid
    end

    it "é válido com confirmação de senha que confere" do
      usr.password = "654321"
      usr.password_confirmation = "654321"
      expect(usr).to be_valid
    end

    it "retorna usuário admin na pesquisa" do
      uteste = create(:usuario_admin)
      upes = Usuario.pesquisar({email: 'admin@admin.com'}).first
      expect(upes).to eq(uteste)
    end

    it "retorna usuário admin quando pesquisado por Administrador" do  
      uteste = create(:usuario_admin)
      upes = Usuario.pesquisar({nome: 'Administrador', email: 'admin@admin.com'}).first
      expect(upes).to eq(uteste)
    end

    it "retorna todos usários quando pesquisa em branco" do
      assert Usuario.pesquisar({}).count == Usuario.all.count
    end
  end
end
