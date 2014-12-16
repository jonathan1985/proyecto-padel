class palasController < ApplicationController
  layout "inicio"
  before_action :set_palas, only: [:show, :edit, :update, :destroy]

  # GET /palas
  # GET /palas.json
  def index
    @palas = palas.all
  end

  # GET /palas/1
  # GET /palas/1.json
  def show
  end

  # GET /palas/new
  def new
    @palas = palas.new
  end

  # GET /palas/1/edit
  def edit
  end

  # POST /palas
  # POST /palas.json
  def create
    @palas = palas.new(palas_params)

    respond_to do |format|
      if @palas.save
        format.html { redirect_to @palas, notice: 'palas was successfully created.' }
        format.json { render action: 'show', status: :created, location: @palas }
      else
        format.html { render action: 'new' }
        format.json { render json: @palas.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palas/1
  # PATCH/PUT /palas/1.json
  def update
    respond_to do |format|
      if @palas.update(palas_params)
        format.html { redirect_to @palas, notice: 'palas was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @palas.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palas/1
  # DELETE /palas/1.json
  def destroy
    @palas.destroy
    respond_to do |format|
      format.html { redirect_to palas_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palas
      @palas = palas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palas_params
      params.require(:palas).permit(:nombre, :informacion, :sinopsis, :puntuacion, :votos, :imagen, :enlace_imagen, :directores, :titulo_original,:generos)
    end
end
