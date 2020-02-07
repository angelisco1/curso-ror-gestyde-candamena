class RecetasController < ApplicationController

  def index
    @recetas = Receta.all
  end

  def show
    @receta = Receta.con_usuario.con_ingredientes_y_categorias.find(params[:id])
  end

  def new
    @receta = Receta.new
  end

  def create
    @receta = Receta.new receta_params.merge({:puntuacion => 0, :usuario => Usuario.first})
    if @receta.valid?
      @receta.save
      creados = IngredientesReceta.crear_ingredientes_recetas @receta, ingredientes_recetas_params
      if creados
        redirect_to recetas_path
      end
    else
      # flash[:errors] = @receta.errors.full_messages
      # redirect_to new_receta_path
      render :new
    end
  end

  def edit
    @receta = Receta.find params[:id]
  end

  def update
    @receta = Receta.find params[:id]
    if @receta.update receta_params
      actualizados = IngredientesReceta.actualizar_ingredientes_recetas ingredientes_recetas_params.select{|ing_rec| ing_rec.has_key?(:id) && ing_rec[:cantidad] != ""}

      eliminados = IngredientesReceta.eliminar_ingredientes_recetas ingredientes_recetas_params.select{|ing_rec| ing_rec.has_key?(:id) && ing_rec[:cantidad] == ""}.map{|ing_rec| ing_rec[:id]}

      creados = IngredientesReceta.crear_ingredientes_recetas @receta, ingredientes_recetas_params.reject{|ing_rec| ing_rec.has_key?(:id)}

      if creados && actualizados && eliminados
        redirect_to recetas_path
      end
    else
      flash[:errors] = @receta.errors.full_messages
      redirect_to edit_receta_path
    end
  end

  def destroy
    @receta = Receta.find params[:id]
    if @receta.destroy
      redirect_to recetas_path
    end
  end

  private
    def all_params
      params.require(:receta).permit(:nombre, :descripcion, :publica, ingredientes_recetas_attributes: [:cantidad, :id, :ingrediente_id])
    end

    def receta_params
      r_params = all_params
      r_params.delete("ingredientes_recetas_attributes")
      r_params
    end

    def ingredientes_recetas_params
      all_params["ingredientes_recetas_attributes"].to_h.select{|k, v| v["cantidad"] != "" || v.has_key?("id")}.values
    end
end
