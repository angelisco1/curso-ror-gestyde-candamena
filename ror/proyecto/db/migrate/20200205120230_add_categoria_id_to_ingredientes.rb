class AddCategoriaIdToIngredientes < ActiveRecord::Migration[6.0]
  def change
    add_reference :ingredientes, :categoria, default: 1, null: false, foreign_key: true
  end
end
