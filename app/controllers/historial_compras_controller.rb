class HistorialComprasController < ApplicationController
  before_action :set_historial_compra, only: [:show, :edit, :update, :destroy]

  # GET /historial_compras
  # GET /historial_compras.json
  def index
    @historial_compras = HistorialCompra.all
  end

  # GET /historial_compras/1
  # GET /historial_compras/1.json
  def show
  end

  # GET /historial_compras/new
  def new
    @historial_compra = HistorialCompra.new
  end

  # GET /historial_compras/1/edit
  def edit
  end

  # POST /historial_compras
  # POST /historial_compras.json
  def create
    @historial_compra = HistorialCompra.new(historial_compra_params)

    respond_to do |format|
      if @historial_compra.save
        format.html { redirect_to :back, notice: 'Historial compra was successfully created.' }
        format.json { render :show, status: :created, location: @historial_compra }
      else
        format.html { render :new }
        format.json { render json: @historial_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historial_compras/1
  # PATCH/PUT /historial_compras/1.json
  def update
    respond_to do |format|
      if @historial_compra.update(historial_compra_params)
        @cart = Cart.find_by(articulo_id: @historial_compra.producto_id)
        @cart.destroy!
        dec_product_quantity(@historial_compra.producto_id, @cart.cantidad)
        format.html { redirect_to :back, notice: 'Historial compra was successfully updated.' }
        format.json { render :show, status: :ok, location: @historial_compra }
      else
        format.html { render :edit }
        format.json { render json: @historial_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historial_compras/1
  # DELETE /historial_compras/1.json
  def destroy
    @historial_compra.destroy!
    respond_to do |format|
      format.html { redirect_to historial_compras_url, notice: 'Historial compra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historial_compra
      @historial_compra = HistorialCompra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historial_compra_params
      params.require(:historial_compra).permit(:compra_id, :producto_id, :usuario_id, :cantidad, :validated)
    end
    def dec_product_quantity(articulo_id, number)
      @articulo = Articulo.find(articulo_id)
      @articulo.stock -= number
      @articulo.save!

    end
end
