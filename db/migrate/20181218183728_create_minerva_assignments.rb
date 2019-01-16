class CreateMinervaAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :minerva_assignments do |t|
      t.string :title
      t.boolean :automated
      t.integer :interface_id

      t.timestamps
    end
    add_foreign_key :minerva_assignments, :minerva_interfaces, column: :interface_id
    add_index :minerva_assignments, :interface_id
  end
end
