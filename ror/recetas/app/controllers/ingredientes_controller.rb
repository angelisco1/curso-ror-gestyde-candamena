class IngredientesController < ApplicationController

  def index
    @ingredientes = Ingrediente.all.includes(:categoria)
  end

  def new
    @ingrediente = Ingrediente.new
  end

  def create
    @ingrediente = Ingrediente.new ingrediente_params
    if @ingrediente.save
      redirect_to ingredientes_path
    end
  end

  def edit
    @ingrediente = Ingrediente.find params[:id]
  end

  def update
    @ingrediente = Ingrediente.find params[:id]
    if @ingrediente.update ingrediente_params
      redirect_to ingredientes_path
    end
  end

  def destroy
    @ingrediente = Ingrediente.find params[:id]
    @ingrediente.destroy
    redirect_to ingredientes_path
  end

  private
    def ingrediente_params
      params.require(:ingrediente).permit(:nombre, :categoria_id)
    end
end
