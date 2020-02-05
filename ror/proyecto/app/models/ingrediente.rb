class Ingrediente < ApplicationRecord
  validates_presence_of :nombre
  validates_uniqueness_of :nombre
  belongs_to :categoria

end
