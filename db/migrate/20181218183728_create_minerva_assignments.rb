class CreateMinervaAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :minerva_assignments do |t|
      t.string :title
      t.references :interface, foreign_key: true
      t.boolean :automated

      t.timestamps
    end
  end
end
