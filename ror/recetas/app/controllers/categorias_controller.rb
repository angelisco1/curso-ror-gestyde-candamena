class CategoriasController < ApplicationController
  before_action :cambiar_ingredientes_de_categoria, only: :destroy

  def index
    @categorias = Categoria.all
  end

  def new
    @categoria = Categoria.new
  end

  def create
    @categoria = Categoria.new categoria_params
    if @categoria.save
      redirect_to categorias_path
    end
  end

  def edit
    @categoria = Categoria.find params[:id]
  end

  def update
    @categoria = Categoria.find params[:id]
    if @categoria.update categoria_params
      redirect_to categorias_path
    end
  end

  def destroy
    @categoria = Categoria.find params[:id]
    @categoria.destroy
    redirect_to categorias_path
  end

  private
    def categoria_params
      params.require(:categoria).permit(:nombre)
    end

    def cambiar_ingredientes_de_categoria
      categoria = Categoria.includes(:ingredientes).find(params[:id])
      ids = categoria.ingredientes.map{|c| c.id}
      Ingrediente.cambiar_categoria ids, Categoria.find_by(:nombre => 'Desconocida').id
    end
end
