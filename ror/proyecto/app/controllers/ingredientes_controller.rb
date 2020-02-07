class IngredientesController < ApplicationController

  def index
    # @ingredientes = Ingrediente.all.includes(:categoria)
    @ingredientes = Ingrediente.all.con_categorias
  end

  # def show
  # end

  def new
    @ingrediente = Ingrediente.new
    @categorias = Categoria.all
  end

  def create
    @ingrediente = Ingrediente.new(ingrediente_params)
    # puts "ING_PARAMS: #{ingrediente_params}"
    if @ingrediente.valid?
      @ingrediente.save
      redirect_to(ingredientes_path)
    else
      puts "Hay algo mal..."
      flash[:errors] = @ingrediente.errors.full_messages
      redirect_to(new_ingrediente_path)
    end
  end

  def edit
    @ingrediente = Ingrediente.find(params[:id])
    @categorias = Categoria.all
  end

  def update
    @ingrediente = Ingrediente.find(params[:id])
    # byebug
    if @ingrediente.update(ingrediente_params)
      redirect_to(ingredientes_path)
    else
      puts "Hay algo mal..."
    # render :new
    end
  end

  def destroy
    @ingrediente = Ingrediente.find(params[:id])
    @ingrediente.destroy
    redirect_to(ingredientes_path)
  end

  private

    def ingrediente_params
      params.require(:ingrediente).permit(:nombre, :categoria_id)
    end
end
