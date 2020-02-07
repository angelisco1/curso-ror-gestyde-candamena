module IngredientesHelper

  def categorias_select_options categorias
    categorias.map{|categoria| [categoria.nombre, categoria.id]}
  end

end
