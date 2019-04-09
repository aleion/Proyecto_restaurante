class LiquidosController < ApplicationController
  before_action :set_liquido, only: [:show, :edit, :update, :destroy]

  # GET /liquidos
  # GET /liquidos.json
  def index
    @liquidos = Liquido.all
  end

  # GET /liquidos/1
  # GET /liquidos/1.json
  def show
  end

  # GET /liquidos/new
  def new
    @liquido = Liquido.new
  end

  # GET /liquidos/1/edit
  def edit
  end

  # POST /liquidos
  # POST /liquidos.json
  def create
    @liquido = Liquido.new(liquido_params)

    respond_to do |format|
      if @liquido.save
        format.html { redirect_to @liquido, notice: 'Liquido was successfully created.' }
        format.json { render :show, status: :created, location: @liquido }
      else
        format.html { render :new }
        format.json { render json: @liquido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liquidos/1
  # PATCH/PUT /liquidos/1.json
  def update
    respond_to do |format|
      if @liquido.update(liquido_params)
        format.html { redirect_to @liquido, notice: 'Liquido was successfully updated.' }
        format.json { render :show, status: :ok, location: @liquido }
      else
        format.html { render :edit }
        format.json { render json: @liquido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liquidos/1
  # DELETE /liquidos/1.json
  def destroy
    @liquido.destroy
    respond_to do |format|
      format.html { redirect_to liquidos_url, notice: 'Liquido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liquido
      @liquido = Liquido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liquido_params
      params.require(:liquido).permit(:nombre, :precio, :detalle, :categoria)
    end
end
