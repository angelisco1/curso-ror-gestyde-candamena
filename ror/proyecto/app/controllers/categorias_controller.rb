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

    if Categoria.create(nombre: params[:categoria][:nombre])
      redirect_to categorias_path
    else
      puts "Hay algo mal..."
    # render :new
    end

    # puts "Creando categoria #{params[:categoria][:nombre]}"
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
