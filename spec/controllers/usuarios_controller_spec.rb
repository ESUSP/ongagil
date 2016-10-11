require 'rails_helper'

RSpec.describe UsuariosController, type: :controller do

  #Hash de atributos válidos para o modelo
  let(:valid_attributes) {
  	return attributes_for(:usuario_aleatorio)
  }

  #Hash de atributos inválidos para o modelo
  let(:invalid_attributes) {	
  	return attributes_for(:usuario_aleatorio, email: "invalido@")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProjetosController. Be sure to keep this updated too.

  # Sessão vazia para cadastrar usuário
  let(:valid_session) { {} }

  describe "GET #new" do
    it "cria um novo usuario como @usuario" do
      get :new, params: {}, session: valid_session
      expect(assigns(:usuario)).to be_a_new(Usuario)
    end
  end

  describe "POST #create" do
    context "com parâmetros validos" do
      it "cria um novo Usuario" do
      	#byebug
        expect {
          post :create, params: {usuario: valid_attributes}, session: valid_session
        }.to change(Usuario, :count).by(1)
      end

      it "atribui um recem criado usuario como @usuario" do
        post :create, params: {usuario: valid_attributes}, session: valid_session
        expect(assigns(:usuario)).to be_a(Usuario)
        expect(assigns(:usuario)).to be_persisted
      end
    end

    context "com parâmetros inválidos" do
      it "atribui um recem criado mas não salvo usuario como @usuario" do
        post :create, params: {usuario: invalid_attributes}, session: valid_session
        expect(assigns(:usuario)).to be_a_new(Usuario)
      end

      it "re-renderiza o template 'new'" do
        post :create, params: {usuario: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

end
