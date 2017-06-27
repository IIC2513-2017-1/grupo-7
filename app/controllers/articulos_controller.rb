class ArticulosController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :set_articulo, only: [:show, :edit, :update, :destroy]

  # GET /articulos
  # GET /articulos.json
  def index
    @articulos = Articulo.all
    if params[:search]
      @articulos = Articulo.search(params[:search]).order("created_at DESC")
    else
      @articulos = Articulo.all.order('created_at DESC')
    end
  end

  # GET /articulos/1
  # GET /articulos/1.json
  def show
    @cart = Cart.new
    @comentario = Comentario.new
  end

  # GET /articulos/new
  def new
    @articulo = Articulo.new
  end

  # GET /articulos/1/edit
  def edit
  end

  # POST /articulos
  # POST /articulos.json
  def create
    @articulo = current_user.articulos.build(articulo_params)
    if @articulo.save!
      flash[:success] = "Articulo publicado!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  # PATCH/PUT /articulos/1
  # PATCH/PUT /articulos/1.json
  def update
    respond_to do |format|
      if @articulo.update(articulo_params)
        format.html { redirect_to @articulo, notice: 'Articulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @articulo }
      else
        format.html { render :edit }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulos/1
  # DELETE /articulos/1.json
  def destroy
    destroy_cart_entries
    destroy_comments

    if @articulo.destroy!
      respond_to do |format|
        format.html { redirect_to :back }
        format.json { head :no_content }
        format.js   { render :layout => false }
      end
    end
  end

  def moneda
      nueva_moneda = params[:moneda]
      @articulo = Articulo.find(params[:ide])
      require 'rest-client'
      require 'json'
      url= 'http://free.currencyconverterapi.com/api/v3/convert?q=CLP_'+nueva_moneda+'&compact=ultra'
      respuesta = RestClient.get url
      response = JSON.parse(respuesta)
      redirect_to :back, flash: {nueva_moneda: nueva_moneda, precio: response.values[0]}

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articulo
      @articulo = Articulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articulo_params
      params.require(:articulo).permit(:name, :precio, :stock, :descripcion, :categoria, :image)
    end

    def destroy_comments
      articulo_id = @articulo.id
      @comentarios = Comentario.where(articulo_id: articulo_id)
      if @comentarios.any?
        @comentarios.each do |comentario|
          comentario.destroy
        end
      end
    end

    def destroy_cart_entries
      articulo_id = @articulo.id
      @carts = Cart.where(articulo_id: articulo_id)
      if @carts.any?
        @carts.each do |cart|
          cart.destroy
        end
      end
    end

end
