require 'rails_helper'

RSpec.describe UsuariosController, type: :controller do
  describe "controller" do
    #Hash de atributos válidos para o modelo
    let(:valid_attributes) {
      return attributes_for(:usuario_aleatorio)
    }

    #Hash de atributos inválidos para o modelo
    let(:invalid_attributes) {
      return attributes_for(:usuario_aleatorio, email: "invalido@")
    }

    # Sessão vazia para cadastrar usuário
    let(:empty_session) { {} }

    # Sessão com usuário logado
    let(:valid_session_admin) {
      @uadmin =  create(:usuario_admin)
      session[:id] = Usuario.all.find_by(email: @uadmin.email)
      session
    }

    describe "GET #index" do
      context "com parâmetros validos" do
        it "lista usuários em @usuarios" do
          create(:usuario_aleatorio)
          get :index, params: {}, session: valid_session_admin
          expect(assigns(:usuarios).count).to be >= 1
        end
      end
    end

    describe "GET #show" do
      it "exibe um usuario aleatório" do
        @usu = create(:usuario_aleatorio)
        get :show, params: {id: @usu.to_param}, session: valid_session_admin
        expect(assigns(:usuario)).to eq(@usu)
      end
    end

    describe "GET #edit" do
      it "altera um usuario aleatório" do
        @usu = create(:usuario_aleatorio)
        get :edit, params: {id: @usu.to_param}, session: valid_session_admin
        expect(assigns(:usuario)).to eq(@usu)
      end
    end

    describe "GET #senha" do
      it "altera senha do usuário atual" do
        @usu = create(:usuario_aleatorio)
        session[:id] = @usu.id
        get :senha, params: {}, session: session
        expect(assigns(:usuario)).to eq(@usu)
      end
    end


    describe "GET #new" do
      it "cria um novo usuario como @usuario" do
        get :new, params: {}, session: empty_session
        expect(assigns(:usuario)).to be_a_new(Usuario)
      end
    end

    describe "PATCH #patch" do
      context "com parâmetros válidos" do
        it "atualiza o usuário com nova senha" do
          @usu = create(:usuario_aleatorio)
          session[:id] = @usu.id

          new_pwd_attributes =  {:old_password => @usu.password,
                                 :password => '12345',
                                 :password_confirmation => '12345'}

          put :patch, params: {usuario: new_pwd_attributes}, session: session
          assert (@usu.password_digest != Usuario.find(@usu.id)[:password_digest])
        end
      end
    end

    describe "PUT #update" do
      context "com parâmetros válidos" do
        let(:new_attributes) {
          return {:nome => 'novo_teste_nome'}
        }
        it "atualiza o usuário com novo nome" do
          @usu = create(:usuario_aleatorio)
          put :update, params: {id: @usu.to_param, usuario: new_attributes}, session: valid_session_admin
          @usu.reload
          assert (@usu.nome == 'novo_teste_nome')
        end

        it "atualiza o usuario com ele mesmo e deve ser igual" do
          @usu = create(:usuario_aleatorio)
          put :update, params: {id: @usu.to_param, usuario: @usu.attributes}, session: valid_session_admin
          expect(assigns(:usuario)).to eq(@usu)
        end

        it "redireciona o usuario após atribuição para consulta dele mesmo" do
          @usu = create(:usuario_aleatorio)
          put :update, params: {id: @usu.to_param, usuario: @usu.attributes}, session: valid_session_admin
          expect(response).to redirect_to(@usu)
        end
      end
    end

    describe "POST #create" do
      context "com parâmetros validos" do
        it "cria um novo Usuario" do
          expect {
            post :create, params: {usuario: valid_attributes}, session: empty_session
          }.to change(Usuario, :count).by(1)
        end

        it "atribui um recem criado usuario como @usuario" do
          post :create, params: {usuario: valid_attributes}, session: empty_session
          expect(assigns(:usuario)).to be_a(Usuario)
          expect(assigns(:usuario)).to be_persisted
        end
      end

      context "com parâmetros inválidos" do
        it "atribui um recem criado mas não salvo usuario como @usuario" do
          post :create, params: {usuario: invalid_attributes}, session: empty_session
          expect(assigns(:usuario)).to be_a_new(Usuario)
        end

        it "re-renderiza o template 'new'" do
          post :create, params: {usuario: invalid_attributes}, session: empty_session
          expect(response).to render_template("new")
        end
      end
    end
  end
end
