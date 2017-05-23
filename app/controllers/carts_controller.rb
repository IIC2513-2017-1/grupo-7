class CartsController < ApplicationController
  def new
    @cart = Cart.new
  end

  def index
    @carts = Cart.all
  end

  def show
  end

  def create
    @cart = Cart.new(cart_params)
    if @cart.save!
      flash[:success] = "Articulo publicado!"
    else
      flash[:danger] = "Problema"
    end
  end
  def destroy
    Cart.find_by(id:params[:id]).destroy
    redirect_to :back
  end

  def cart_params
    params.require(:cart).permit(:cantidad, :articulo_id, :user_id)
  end
end
