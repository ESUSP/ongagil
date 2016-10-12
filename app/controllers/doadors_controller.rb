class DoadorsController < ApplicationController
  before_action :set_doador, only: [:show, :edit, :update, :destroy]

  # GET /doadors
  # GET /doadors.json
  def index
    # @doadors = Doador.all
    if params[:search]
      #@doadors = Doador.search(params[:search])
      @doadors= Doador.paginate(page: params[:page],:per_page => 5).search(params[:search])
    else
      @doadors = Doador.paginate(:page => params[:page], :per_page => 10)
    end
  end

  # GET /doadors/1
  # GET /doadors/1.json
  def show
  end

  # GET /doadors/new
  def new
    @doador = Doador.new
  end

  # GET /doadors/1/edit
  def edit
  end

  # POST /doadors
  # POST /doadors.json
  def create
    @doador = Doador.new(doador_params)

    respond_to do |format|
      if @doador.save
        format.html { redirect_to @doador, notice: 'Doador criado com sucesso.' }
        format.json { render :show, status: :created, location: @doador }
      else
        format.html { render :new }
        format.json { render json: @doador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doadors/1
  # PATCH/PUT /doadors/1.json
  def update
    respond_to do |format|
      if @doador.update(doador_params)
        format.html { redirect_to @doador, notice: 'Doador atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @doador }
      else
        format.html { render :edit }
        format.json { render json: @doador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doadors/1
  # DELETE /doadors/1.json
  def destroy
    @doador.destroy
    respond_to do |format|
      format.html { redirect_to doadors_url, notice: 'Doador excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doador
      @doador = Doador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doador_params
      params.require(:doador).permit(:nome, :endereco, :telefone, :frequencia, :forma, :data)
    end
end
