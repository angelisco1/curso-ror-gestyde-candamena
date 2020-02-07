class CategoriasController < ApplicationController

  def index
    @categorias = Categoria.all
  end

  # def show
  # end

  def new
    @categoria = Categoria.new
  end

  def create
    # Categoria.create()
    # puts "CAT_PARAMS: #{categoria_params}"
    if Categoria.create(categoria_params)
      redirect_to(categorias_path)
    else
      puts "Hay algo mal..."
    # render :new
    end
    # puts "Creando categoria #{params[:categoria][:nombre]}"
  end

  def edit
    @categoria = Categoria.find(params[:id])
  end

  def update
    @categoria = Categoria.find(params[:id])
    # byebug
    if @categoria.update(categoria_params)
      redirect_to(categorias_path)
    else
      puts "Hay algo mal..."
    # render :new
    end
  end

  def destroy
    @categoria = Categoria.find(params[:id])
    @categoria.destroy
    redirect_to(categorias_path)
  end

  private

    def categoria_params
      params.require(:categoria).permit(:nombre)
    end
end
