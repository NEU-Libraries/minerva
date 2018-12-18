class CreateMinervaStates < ActiveRecord::Migration[5.2]
  def change
    create_table :minerva_states do |t|
      t.integer :creator_id
      t.integer :user_id
      t.integer :role_id
      t.integer :work_id
      t.references :assignment, foreign_key: true
      t.references :status, foreign_key: true

      t.timestamps
    end
    add_index :minerva_states, :creator_id
    add_index :minerva_states, :user_id
    add_index :minerva_states, :role_id
    add_index :minerva_states, :work_id
  end
end
