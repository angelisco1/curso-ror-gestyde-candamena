class AddUsuarioIdToRecetas < ActiveRecord::Migration[6.0]
  def change
    add_reference :recetas, :usuario, null: false, foreign_key: true, default: 1
  end
end
