class Receta < ApplicationRecord

  has_many :ingredientes_recetas
  has_many :ingredientes, through: :ingredientes_recetas
  has_many :categorias, through: :ingredientes
end