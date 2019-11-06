class RemoveRole < ActiveRecord::Migration[6.0]
  def change
    remove_index :minerva_states, :role_id
    remove_column :minerva_states, :role_id
    drop_table :minerva_roles
  end
end
