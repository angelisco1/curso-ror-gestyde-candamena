class AddCategoriaIdToIngredientes < ActiveRecord::Migration[6.0]
  def change
    add_reference :ingredientes, :categoria, null: false, foreign_key: true, default: 1
  end
end
