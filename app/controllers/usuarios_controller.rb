class UsuariosController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.pesquisar(params).paginate(:page => params[:page], :per_page => 10)
    @upesq = Usuario.new
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  def new
    @usuario = Usuario.new
  end

  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, flash: {success: 'Dados do usuário atualizados com sucesso.'}}
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

 # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to @usuario, flash: {success: 'Usuário registrado com sucesso.'} }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      #flash[:success] = 'User was successfully created.'
      format.html { redirect_to usuarios_url, flash: {success: 'Usuário foi excluído com sucesso.'} }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit!
    end
end
