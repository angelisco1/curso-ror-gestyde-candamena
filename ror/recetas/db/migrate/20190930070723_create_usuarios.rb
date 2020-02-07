class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :username, null: false
      t.string :nombre, null: false
      t.string :apellidos
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
