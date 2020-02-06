class Categoria < ApplicationRecord
  validates_presence_of :nombre
  validates_uniqueness_of :nombre

  has_many :ingredientes
end