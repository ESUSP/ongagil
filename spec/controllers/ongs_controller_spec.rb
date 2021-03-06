require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe OngsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Ong. As you add validations to Ong, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }


  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OngsController. Be sure to keep this updated too.
  let(:valid_session) {
    @user = create(:usuario_aleatorio)
    return session[:id] = @user.id
  }

  describe "GET #index" do
    it "assigns all ongs as @ongs" do
      @user = create(:usuario_aleatorio)
      ong = @user.ongs.create! valid_attributes
      session[:id] = @user.id
      get :index, params: {}, session: session
      #ong = Ong.create! valid_attributes
      #get :index, params: {}, session: valid_session
      expect(assigns(:ongs)).to eq([ong])
    end
  end

  describe "GET #show" do
    it "assigns the requested ong as @ong" do
      @user = create(:usuario_aleatorio)
      ong = @user.ongs.create! valid_attributes
      session[:id] = @user.id
      get :show, params: {id: ong.to_param}, session: session
      #ong = Ong.create! valid_attributes
      #get :show, params: {id: ong.to_param}, session: valid_session
      expect(assigns(:ong)).to eq(ong)
    end
  end

  describe "GET #new" do
    it "assigns a new ong as @ong" do
      @user = create(:usuario_aleatorio)
      session[:id] = @user.id
      get :new, params: {}, session: session
      #get :new, params: {}, session: valid_session
      expect(assigns(:ong)).to be_a_new(Ong)
    end
  end

  describe "GET #edit" do
    it "assigns the requested ong as @ong" do
      @user = create(:usuario_aleatorio)
      ong = @user.ongs.create! valid_attributes
      session[:id] = @user.id
      get :edit, params: {id: ong.to_param}, session: session
      #ong = Ong.create! valid_attributes
      #get :edit, params: {id: ong.to_param}, session: valid_session
      expect(assigns(:ong)).to eq(ong)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Ong" do
        expect {
          post :create, params: {ong: valid_attributes}, session: valid_session
        }.to change(Ong, :count).by(1)
      end

      it "assigns a newly created ong as @ong" do
        post :create, params: {ong: valid_attributes}, session: valid_session
        expect(assigns(:ong)).to be_a(Ong)
        expect(assigns(:ong)).to be_persisted
      end

      it "redirects to the created ong" do
        post :create, params: {ong: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Ong.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved ong as @ong" do
        post :create, params: {ong: invalid_attributes}, session: valid_session
        expect(assigns(:ong)).to be_a_new(Ong)
      end

      it "re-renders the 'new' template" do
        post :create, params: {ong: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested ong" do
        @user = create(:usuario_aleatorio)
        session[:id] = @user.id
        ong = @user.ongs.create! valid_attributes
        put :update, params: {id: ong.to_param, ong: new_attributes}, session: session
        #ong = Ong.create! valid_attributes
        #put :update, params: {id: ong.to_param, ong: new_attributes}, session: valid_session
        ong.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested ong as @ong" do
        @user = create(:usuario_aleatorio)
        session[:id] = @user.id
        ong = @user.ongs.create! valid_attributes
        put :update, params: {id: ong.to_param, ong: valid_attributes}, session: session
        #ong = Ong.create! valid_attributes
        #put :update, params: {id: ong.to_param, ong: valid_attributes}, session: valid_session
        expect(assigns(:ong)).to eq(ong)
      end

      it "redirects to the ong" do
        @user = create(:usuario_aleatorio)
        session[:id] = @user.id
        ong = @user.ongs.create! valid_attributes
        put :update, params: {id: ong.to_param, ong: valid_attributes}, session: session
        #ong = Ong.create! valid_attributes
        #put :update, params: {id: ong.to_param, ong: valid_attributes}, session: valid_session
        expect(response).to redirect_to(ong)
      end
    end

    context "with invalid params" do
      it "assigns the ong as @ong" do
        @user = create(:usuario_aleatorio)
        session[:id] = @user.id
        ong = @user.ongs.create! valid_attributes
        put :update, params: {id: ong.to_param, ong: invalid_attributes}, session: session
        #ong = Ong.create! valid_attributes
        #put :update, params: {id: ong.to_param, ong: invalid_attributes}, session: valid_session
        expect(assigns(:ong)).to eq(ong)
      end

      it "re-renders the 'edit' template" do
        @user = create(:usuario_aleatorio)
        session[:id] = @user.id
        ong = @user.ongs.create! valid_attributes
        put :update, params: {id: ong.to_param, ong: invalid_attributes}, session: session
        #ong = Ong.create! valid_attributes
        #put :update, params: {id: ong.to_param, ong: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested ong" do
      @user = create(:usuario_aleatorio)
      session[:id] = @user.id
      ong = @user.ongs.create! valid_attributes

      #ong = Ong.create! valid_attributes
      expect {
        delete :destroy, params: {id: ong.to_param}, session: session
        #delete :destroy, params: {id: ong.to_param}, session: valid_session
      }.to change(Ong, :count).by(-1)
    end

    it "redirects to the ongs list" do
      @user = create(:usuario_aleatorio)
      session[:id] = @user.id
      ong = @user.ongs.create! valid_attributes
      delete :destroy, params: {id: ong.to_param}, session: session
      #ong = Ong.create! valid_attributes
      #delete :destroy, params: {id: ong.to_param}, session: valid_session
      expect(response).to redirect_to(ongs_url)
    end
  end

end
