class AddIndexToUsuarios < ActiveRecord::Migration[6.0]
  def change
    # add_column :usuarios, :username, :string
    add_index :usuarios, :username, unique: true
  end
end
