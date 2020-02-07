class Receta < ApplicationRecord
  validates_presence_of :nombre
  validates_numericality_of :puntuacion, only_integer: true

  has_many :ingredientes_recetas, dependent: :destroy
  has_many :ingredientes, through: :ingredientes_recetas
  belongs_to :usuario

  accepts_nested_attributes_for :ingredientes_recetas


  scope :con_usuario, -> {includes(:usuario)}
  scope :con_ingredientes_y_categorias, -> {includes(ingredientes: [:categoria])}

  def inicializar_ingredientes_recetas
    Ingrediente.all.order(:nombre).map do |ingrediente|
      if ingrediente_receta = ingredientes_recetas.find{|ing_rec| ing_rec.ingrediente_id == ingrediente.id}
        ingrediente_receta
      else
        IngredientesReceta.new(ingrediente: ingrediente)
      end
    end
  end
end
