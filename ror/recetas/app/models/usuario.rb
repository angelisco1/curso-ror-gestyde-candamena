class Usuario < ApplicationRecord
  validates_presence_of :username, :nombre
  # validates_uniqueness_of :username

  has_many :recetas
end
