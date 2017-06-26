class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def add_articulo
    @articulo = current_user.articulos.build if logged_in?
  end

  def carrito
  end

  def categoria
    @categoria = params[:categoria]
  end

  def confirmar_compras
  end
end
