require 'rails_helper'

RSpec.describe "Usuarios", type: :request do
  describe "GET /usuarios/new" do
    it "acessa pagina de registro" do
      get new_usuario_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /usuarios/" do
    # it "Nega acesso a usuário não logado" do
    #   delete logout_path
    #   get usuarios_path
    #   expect(response).to redirect_to login_path
    # end

    it "List usuários para administrador" do
      #post login_path, :login => user.login, :password => 'password'
      post login_path, attributes_for(:usuario_admin)
      get usuarios_path
      expect(response).to render_template(:index)
      expect(response).to have_http_status(200)
    end
  end

end
