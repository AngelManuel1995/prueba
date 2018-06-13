class InscripcionesController < ApplicationController
  before_action :set_inscripcione, only: [:show, :edit, :update, :destroy]

  # GET /inscripciones
  # GET /inscripciones.json
  def index
    @inscripciones = Inscripcione.all
  end

  # GET /inscripciones/1
  # GET /inscripciones/1.json
  def show
  end

  # GET /inscripciones/new
  def new
    @inscripcione = Inscripcione.new
  end

  # GET /inscripciones/1/edit
  def edit
  end

  # POST /inscripciones
  # POST /inscripciones.json
  def create
    @inscripcione = Inscripcione.new(inscripcione_params)

    respond_to do |format|
      if @inscripcione.save
        format.html { redirect_to @inscripcione, notice: 'Inscripcione was successfully created.' }
        format.json { render :show, status: :created, location: @inscripcione }
      else
        format.html { render :new }
        format.json { render json: @inscripcione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inscripciones/1
  # PATCH/PUT /inscripciones/1.json
  def update
    respond_to do |format|
      if @inscripcione.update(inscripcione_params)
        format.html { redirect_to @inscripcione, notice: 'Inscripcione was successfully updated.' }
        format.json { render :show, status: :ok, location: @inscripcione }
      else
        format.html { render :edit }
        format.json { render json: @inscripcione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscripciones/1
  # DELETE /inscripciones/1.json
  def destroy
    @inscripcione.destroy
    respond_to do |format|
      format.html { redirect_to inscripciones_url, notice: 'Inscripcione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscripcione
      @inscripcione = Inscripcione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inscripcione_params
      params.require(:inscripcione).permit(:id_inscripcion, :documento, :curso, :estrato, :valor_credito)
    end
end
