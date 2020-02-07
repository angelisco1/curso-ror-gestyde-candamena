class Ingrediente < ApplicationRecord
  validates_presence_of :nombre, message: "no puede ser blanco"
  validates_uniqueness_of :nombre
  belongs_to :categoria

  scope :con_categorias, -> { includes(:categoria) }

end
