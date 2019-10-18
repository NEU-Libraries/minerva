class CreateMinervaStates < ActiveRecord::Migration[5.2]
  def change
    create_table :minerva_states do |t|
      t.integer :creator_id
      t.integer :user_id
      t.integer :role_id
      t.integer :work_id
      t.integer :interface_id
      t.string  :status

      t.timestamps
    end
    add_index :minerva_states, :creator_id
    add_index :minerva_states, :user_id
    add_index :minerva_states, :role_id
    add_index :minerva_states, :work_id

    add_foreign_key :minerva_states, :minerva_interfaces, column: :interface_id
    add_index :minerva_interfaces, :interface_id
  end
end
