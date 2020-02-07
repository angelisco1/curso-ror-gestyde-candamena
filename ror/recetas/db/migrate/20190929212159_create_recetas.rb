class CreateRecetas < ActiveRecord::Migration[6.0]
  def change
    create_table :recetas do |t|
      t.string :nombre, null: false
      t.text :descripcion
      t.integer :puntuacion, default: 0
      t.boolean :publica, default: true

      t.timestamps
    end
  end
end
