class Ingrediente < ApplicationRecord
  validates_presence_of :nombre
  validates_uniqueness_of :nombre

  belongs_to :categoria
  has_many :ingredientes_recetas
  has_many :recetas, through: :ingredientes_recetas

  def self.cambiar_categoria ingredientes_ids, nueva_categoria_id
    Ingrediente.where(:id => ingredientes_ids).update_all(:categoria_id => nueva_categoria_id)
  end
end
