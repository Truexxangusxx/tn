class ColumnasController < ApplicationController
  before_action :set_columna, only: [:show, :edit, :update, :destroy]

  # GET /columnas
  # GET /columnas.json
  def index
    @columnas = Columna.all
  end

  # GET /columnas/1
  # GET /columnas/1.json
  def show
  end

  # GET /columnas/new
  def new
    @columna = Columna.new
  end

  # GET /columnas/1/edit
  def edit
  end

  # POST /columnas
  # POST /columnas.json
  def create
    @columna = Columna.new(columna_params)

    respond_to do |format|
      if @columna.save
        format.html { redirect_to @columna, notice: 'Columna was successfully created.' }
        format.json { render :show, status: :created, location: @columna }
      else
        format.html { render :new }
        format.json { render json: @columna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /columnas/1
  # PATCH/PUT /columnas/1.json
  def update
    respond_to do |format|
      if @columna.update(columna_params)
        format.html { redirect_to @columna, notice: 'Columna was successfully updated.' }
        format.json { render :show, status: :ok, location: @columna }
      else
        format.html { render :edit }
        format.json { render json: @columna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /columnas/1
  # DELETE /columnas/1.json
  def destroy
    @columna.destroy
    respond_to do |format|
      format.html { redirect_to columnas_url, notice: 'Columna was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_columna
      @columna = Columna.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def columna_params
      params.require(:columna).permit(:nombre)
    end
end
